<GlobalFunctions>
  <SqlQueryUnified
    id="get_billing_detail_info"
    importedQueryInputs={{
      selectCustomerOrg: "",
      selectBillingDetail: "{{ billing_detail_id.value }}",
    }}
    isImported={true}
    playgroundQueryName="new - billing_details_all"
    playgroundQueryUuid="0527baa7-0289-4ecd-bfa5-ba3da3c44959"
    query={include("./lib/get_billing_detail_info.sql", "string")}
    resourceName="ac947e54-f947-416a-bfef-2a436b9fbb80"
    retoolVersion="3.196.0"
    showLatestVersionUpdatedWarning={true}
    warningCodes={[]}
  />
  <State id="show_sync" value="false" />
  <State id="show_edit" value="false" />
  <State id="show_enable" value="false" />
  <State id="show_disable" value="false" />
  <GlobalWidgetQuery
    id="afterSubmit"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
</GlobalFunctions>
