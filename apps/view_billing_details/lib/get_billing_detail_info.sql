WITH associated_bus AS (
    SELECT
        default_bu."billing_detail",
        json_agg(default_bu."business_unit") AS "bu_ids",
        json_agg("BusinessUnit"."name") AS "bu_names"
    FROM "metabase"."business_unit_default_billing" default_bu
    LEFT JOIN "BusinessUnit" ON "BusinessUnit"."objectId" = default_bu."business_unit"
    GROUP BY default_bu."billing_detail"
)

SELECT
  "OrgBillingDetails"."objectId",
  "OrgBillingDetails"."updatedAt",
  "Organization"."name" AS "client",
  CASE WHEN "OrgBillingDetails"."peAccountingClientId" IS NULL THEN FALSE ELSE TRUE END AS "peConnected",
  "OrgBillingDetails"."peAccountingClientId" AS "peClientId",
  metabase.pe_accounting_clients."foreign_id" AS "peForeignId",
  "OrgBillingDetails"."billingDetailsName",
  "OrgBillingDetails"."verified_invoice_email" AS "verified",
  "OrgBillingDetails"."invoiceRecipients",
  "OrgBillingDetails"."companyLegalName",
  "OrgBillingDetails"."companyRegNumber",
  "OrgBillingDetails"."vatNumber",
  "OrgBillingDetails"."address_line1",
  "OrgBillingDetails"."address_line2",
  "OrgBillingDetails"."address_city",
  "OrgBillingDetails"."address_postalCode",
  "OrgBillingDetails"."address_state",
  "OrgBillingDetails"."address_country" AS "country_code",
  country."country_name" AS "country",
  CONCAT("OrgBillingDetails"."address_country", ' - ', country."country_name") AS "country_full",
  
  "OrgBillingDetails"."payment_days" AS "paymentdays",
  "OrgBillingDetails"."finance_contact" AS "financeContact",
  "OrgBillingDetails"."is_available" AS "available",
  CASE WHEN "Organization"."customizations" IS NULL THEN FALSE ELSE TRUE
  END AS "emsClient",
  "Organization"."disabled" AS "orgDisabled",
  "OrgBillingDetails"."isDefault" AS "org_default",
  associated_bus."bu_names" AS "default_for_bu",
  "OrgBillingDetails"."organization",
  associated_bus."bu_ids" AS "buId",
  "OrgBillingDetails"."createdAt"

FROM "OrgBillingDetails"
LEFT JOIN metabase.pe_accounting_clients ON metabase.pe_accounting_clients."id" = "OrgBillingDetails"."peAccountingClientId"
LEFT JOIN "Organization" ON "Organization"."objectId" = "OrgBillingDetails"."organization"
LEFT JOIN "metabase"."country_codes" country ON country."alpha_2_code" = "OrgBillingDetails"."address_country"
LEFT JOIN associated_bus ON associated_bus."billing_detail" = "OrgBillingDetails"."objectId"
WHERE 
 (
    {{ !selectCustomerOrg}}
    or "Organization"."objectId"  = {{ selectCustomerOrg }}
  )
AND 
(
    {{ !selectBillingDetail}}
    or "OrgBillingDetails"."objectId"  = {{ selectBillingDetail }}
  )
  
ORDER BY "OrgBillingDetails"."updatedAt" DESC