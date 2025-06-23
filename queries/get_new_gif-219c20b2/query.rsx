<PlaygroundQuery
  id="get_new_gif"
  adhocResourceType="RESTQuery"
  data={null}
  resourceType={null}
>
  <RESTQuery
    allowedGroupIds={[]}
    allowedGroups={[]}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    events={[]}
    importedQueryDefaults={{}}
    importedQueryInputs={{}}
    privateParams={[]}
    query="https://api.giphy.com/v1/gifs/random?api_key=&tag=&rating=g"
    resourceTypeOverride=""
    retoolVersion="2.116.1"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    watchedParams={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</PlaygroundQuery>
