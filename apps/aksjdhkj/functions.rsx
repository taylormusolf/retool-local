<GlobalFunctions>
  <RESTQuery
    id="query1"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    playgroundQueryName="get_new_gif"
    playgroundQueryUuid="219c20b2-959e-4cfc-be47-4045fac120ac"
    query="https://api.giphy.com/v1/gifs/random?api_key=Pt8BQn7MMyuUDlQW5xvuF2vDU5q8WFJa&tag=&rating=g"
    queryTimeout="10001"
    resourceName="REST-WithoutResource"
    retoolVersion="2.116.1"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer1"
    funcBody={include("./lib/transformer1.js", "string")}
  />
  <RESTQuery
    id="query2"
    notificationDuration={4.5}
    query="https://www.httpbin.org/status/404?test=mykey"
    resourceName="REST-WithoutResource"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query3"
    notificationDuration={4.5}
    query={include("./lib/query3.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query4"
    notificationDuration={4.5}
    query={include("./lib/query4.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="query5"
    actionType="BULK_UPSERT_BY_KEY"
    bulkUpdatePrimaryKey="CustomerID"
    isMultiplayerEdited={false}
    query={include("./lib/query5.sql", "string")}
    records="{{ transformer2.value }}"
    resourceDisplayName="local mssql"
    resourceName="534d25ef-0f66-445a-bc87-2f4d213e3e7e"
    tableName="dbo.Customers"
    warningCodes={[]}
  />
  <Function
    id="transformer2"
    funcBody={include("./lib/transformer2.js", "string")}
  />
</GlobalFunctions>
