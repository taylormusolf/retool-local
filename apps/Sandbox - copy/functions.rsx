<GlobalFunctions>
  <RESTQuery
    id="query1"
    playgroundQueryId={0}
    playgroundQuerySaveId={0}
    query="get"
    resourceDisplayName="Http Bin"
    resourceName="f10729e0-a9ce-4a1a-87b0-155d277cc6f5"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query2"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="special"
    playgroundQuerySaveId={39}
    playgroundQueryUuid="3aa126ba-5395-41d2-a21a-69707355b4a3"
    query={include("./lib/query2.sql", "string")}
    resourceDisplayName="hammerhead"
    resourceName="7c299279-ec49-480f-9e15-de0b8a654b73"
    retoolVersion="3.75.9"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query3"
    isMultiplayerEdited={false}
    query={include("./lib/query3.sql", "string")}
    resourceDisplayName="snowflaker"
    resourceName="96fe4494-ec1c-43a8-960b-d8798c55d175"
    resourceTypeOverride=""
    warningCodes={[]}
  />
  <State
    id="dateRange"
    value="{startingDate: '2023-02-01', endingDate: '2023-02-28'
}"
  />
</GlobalFunctions>
