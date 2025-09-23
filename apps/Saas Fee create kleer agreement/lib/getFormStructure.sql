WITH paidStatus AS ( 
SELECT 
saasLog."invoice_id",
CASE WHEN invoices."certified" IS TRUE THEN CASE WHEN invoices."remaining"= 0 THEN TRUE ELSE FALSE END ELSE NULL END AS "paid"
FROM metabase.saas_log AS saasLog
LEFT JOIN metabase.pe_accounting_client_invoices as invoices ON invoices."id" = saasLog."invoice_id"
)

SELECT 
  "Organization"."name" AS "client",
  saasLog."start_date",
  saasLog."end_date",
  "AccountManager"."email" AS "amEmail",
  saasLog."status",
  saasLog."amount",
  saasLog."discount",
  saasLog."amount" - saasLog."discount" AS "price",
  saasLog."currency",
   round(((saasLog."amount"-saasLog."discount")/"ExchangeRate"."rate") ,0) AS "priceUSD",
  saasLog."type_of_license",
  saasLog."comments",
  saasLog."invoice_id",
  saasLog."created_in_kleer",
  saasLog."kleer_agreement_id",
  invoices."invoice_date",
  invoices."certified",
  invoices."sent",
  paidStatus."paid",
  saasLog."new_client",
  saasLog."renewal",
  saasLog."created_at",
  saasLog."updated_at",
  saasLog."contact_person_name",
  saasLog."contact_person_email",
  saasLog."id",
  saasLog."account_manager",
  saasLog."billing_details",
  saasLog."customer_org",
  "OrgBillingDetails"."peAccountingClientId",
  "OrgBillingDetails"."payment_days",
  users."dimension_entry" AS "peAccoutingAMId"
  
 FROM metabase.saas_log AS saasLog
LEFT JOIN "Organization" ON saasLog."customer_org" = "Organization"."objectId"
LEFT JOIN "AccountManager" ON saasLog."account_manager" = "AccountManager"."objectId"
LEFT JOIN metabase.pe_accounting_client_invoices as invoices ON invoices."id" = saasLog."invoice_id"
LEFT JOIN paidStatus ON paidStatus."invoice_id" = saasLog."invoice_id"
LEFT JOIN "ExchangeRate" ON "ExchangeRate"."currency" = saasLog."currency" AND "ExchangeRate"."date" = invoices."invoice_date"
LEFT JOIN "OrgBillingDetails" ON "OrgBillingDetails"."objectId" = saasLog."billing_details"
LEFT JOIN "metabase"."pe_accounting_users" users ON users."email" = "AccountManager"."email"
WHERE
saasLog."created_in_kleer" = FALSE
  AND saasLog."deleted" = FALSE
AND saasLog."status" = 'Accepted'
AND saasLog."id" = {{ feeId.value }}