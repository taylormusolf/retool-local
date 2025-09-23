<GlobalFunctions>
  <RetoolSDKQuery
    id="getFormData"
    args={{
      ordered: [
        { formId: "{{ formId.value }}" },
        { entityId: "{{ entityId.value }}" },
      ],
    }}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    functionName="getForm"
    isMultiplayerEdited={false}
    queryDisabled="{{ !formId.value || !modalShown.value }}"
    queryDisabledMessage="The two inputs must be present"
    queryTimeout="30000"
    resourceName="b3cbe6e9-7a7d-4ad6-ac43-3cb495e7c952"
    resourceTypeOverride=""
    runWhenModelUpdates={true}
    showFailureToaster={false}
    transformer="// Query results are available as the `data` variable
return data.response"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolSDKQuery
    id="sendFormData"
    args={{
      ordered: [
        { name: "{{form_id.selectedItem}}" },
        { payload: "{{jsonSchemaForm1.data}}" },
        { formId: "{{ formId.value }}" },
        { formParams: "{{ json_schema_form.data }}" },
        { entityId: "{{ entityId.value }}" },
      ],
    }}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    functionName="callForm"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    queryFailureConditions={'[{"condition":"","message":""}]'}
    queryTimeout="30000"
    resourceName="b3cbe6e9-7a7d-4ad6-ac43-3cb495e7c952"
    showFailureToaster={false}
    showSuccessToaster={false}
    successMessage="Yes"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Success" },
                { description: "{{ self.data.response }}" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled=""
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="afterSubmit"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "Couldn't submit the form" },
                { description: "{{ self.data?.message }}" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolSDKQuery>
  <GlobalWidgetQuery
    id="afterSubmit"
    defaultValue=""
    description="Query to run after the form is successfully submitted"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="GlobalWidgetQuery"
    transformer="// Query results are available as the `data` variable
return data"
    value=""
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="moduleContainerafterSubmitTrigger"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/moduleContainerafterSubmitTrigger.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
