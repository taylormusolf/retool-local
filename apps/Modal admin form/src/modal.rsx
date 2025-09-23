<ModalFrame
  id="modal"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !showModal.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter="{{ getFormData.data.submitButtonText }}"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modal_title"
      hidden=""
      value={
        '### {{title.value || getFormData?.data?.name ||  (getFormData.isFetching ? "Loading..." : "Error") }}'
      }
      verticalAlign="center"
    />
    <Button
      id="modal_close_button"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Alert
      id="error_load_form"
      description={'{{ getFormData.error ?? "" }}'}
      hidden="{{ getFormData.isFetching || !getFormData.error }}"
      title="Can't load form"
      type="error"
    />
    <Text
      id="debug_formParams"
      heightType="fixed"
      hidden="{{ !debug.value }}"
      margin="0"
      tooltipText="Corresponds to the `formParams` parameters that would be sent to the callForm action"
      value="<pre>{{ JSON.stringify(json_schema_form.data, null, 2) }}</pre>"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <JSONSchemaForm
      id="json_schema_form"
      data="{{ {
  ...getFormData.data.defaultFormData,
  ...defaultValues.value
} }}"
      events={[
        {
          ordered: [
            { event: "submit" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "sendFormData" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getFormData.queryDisabled || getFormData.isFetching || getFormData.error }}"
      hideSubmit={true}
      jsonSchema="{{ getFormData.data.jsonSchema }}"
      liveValidate={false}
      loading="{{ sendFormData.isFetching }}"
      submitButtonText="{{ getFormData.data.submitButtonText }}"
      uiSchema="{{ getFormData.data.uiSchema }}"
    />
  </Body>
  <Footer>
    <Button
      id="modal_submit"
      disabled=""
      heightType="auto"
      loading="{{ sendFormData.isFetching }}"
      submitTargetId=""
      text="{{ getFormData.data.submitButtonText }}"
    >
      <Event
        event="click"
        method="submit"
        params={{ ordered: [] }}
        pluginId="json_schema_form"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="hide"
    method="run"
    params={{ ordered: [{ src: "moduleContainer.showModal = false" }] }}
    pluginId=""
    type="script"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
