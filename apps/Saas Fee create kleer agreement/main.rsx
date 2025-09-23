<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="feeId" value="7e383bbe-fb95-473a-820b-f94deb01646b" />
  <GlobalWidgetProp id="showModal" defaultValue="false" value="true" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      afterSubmit="modalContainerAfterSubmitTrigger"
      backgroundColor="white"
      feeId="7e383bbe-fb95-473a-820b-f94deb01646b"
      isGlobalWidgetContainer={true}
      margin="0"
      overflowType="scroll"
      showModal="true"
    />
  </Frame>
  <Checkbox
    id="checkbox1"
    formDataKey="does_surveys"
    label="Does surveys"
    labelWidth="100"
    required={true}
  />
  <JSONEditor
    id="jsonEditor3"
    formDataKey="competitors"
    label="Competitors"
    required={true}
    value={
      '{\n  "a": {\n    "b": [1,2,3,4,5,6,7,8,9],\n    "c": {\n      "d": false\n    },\n    "e": "hi"\n  }\n}'
    }
  />
</App>
