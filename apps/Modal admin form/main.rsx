<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="formId"
    allowedGroupIds={[]}
    allowedGroups={[]}
    cacheKeyTtl=""
    changeset=""
    changesetIsObject={false}
    changesetObject=""
    confirmationMessage={null}
    data={null}
    description="The ID of the form to display. Use listForms to explore the available forms"
    enableCaching={false}
    enableErrorTransformer={false}
    enableTransformer={false}
    error={null}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    events={[]}
    finished={null}
    importedQueryDefaults={{ ordered: [] }}
    importedQueryInputs={{ ordered: [] }}
    isFetching={false}
    isImported={false}
    lastReceivedFromResourceAt={null}
    metadata={null}
    notificationDuration=""
    offlineQueryType="None"
    offlineUserQueryInputs=""
    overrideOrgCacheForUserCache={false}
    playgroundQueryId={null}
    playgroundQuerySaveId="latest"
    playgroundQueryUuid=""
    privateParams={[]}
    query=""
    queryDisabled=""
    queryDisabledMessage=""
    queryFailureConditions=""
    queryRefreshTime=""
    queryRunOnSelectorUpdate={false}
    queryRunTime={null}
    queryThrottleTime="750"
    queryTimeout="10000"
    queryTriggerDelay="0"
    rawData={null}
    requestSentTimestamp={null}
    requireConfirmation={false}
    resourceNameOverride=""
    resourceTypeOverride={null}
    runWhenModelUpdates={false}
    runWhenPageLoads={false}
    runWhenPageLoadsDelay=""
    servedFromCache={false}
    showFailureToaster={true}
    showLatestVersionUpdatedWarning={false}
    showSuccessToaster={true}
    showUpdateSetValueDynamicallyToggle={true}
    streamResponse={false}
    successMessage=""
    timestamp={0}
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={false}
    value="organization.createClient"
    watchedParams={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowId={null}
    workflowParams={null}
    workflowRunBodyType="raw"
    workflowRunId={null}
  />
  <GlobalWidgetProp
    id="entityId"
    description="The ID of the entity to edit or to act from"
  />
  <AppStyles id="$appStyles" css="" />
  <GlobalWidgetProp id="title" />
  <GlobalWidgetProp id="showModal" defaultValue="false" value="true" />
  <GlobalWidgetOutput id="modalShown" value="{{ !modal.hidden }}" />
  <GlobalWidgetOutput
    id="apiCall"
    description="The call that would be made to the API"
    value="{{ JSON.stringify(json_schema_form.data) }}"
  />
  <GlobalWidgetProp
    id="debug"
    defaultValue="{{ false }}"
    description="Whether to show the data that would be sent by the form. Useful if you want to include an a"
    value="true"
  />
  <GlobalWidgetProp id="defaultValues" />
  <Include src="./src/modal.rsx" />
  <Frame id="$main" padding="8px 12px" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      afterSubmit="moduleContainerafterSubmitTrigger"
      backgroundColor="white"
      debug="true"
      defaultValues=""
      entityId=""
      formId="organization.createClient"
      hidden=""
      input1={null}
      isGlobalWidgetContainer={true}
      margin="0"
      overflowType="scroll"
      show="true"
      showModal="true"
      style={{ ordered: [] }}
    />
  </Frame>
</App>
