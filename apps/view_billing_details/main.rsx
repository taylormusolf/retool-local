<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="billing_detail_id" defaultValue="9QrDcTpXzo" />
  <GlobalWidgetProp id="show" defaultValue="false" />
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
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      overflowType="scroll"
    >
      <Module
        id="modalAdminForm_edit"
        afterSubmit="get_billing_detail_info"
        debug=""
        defaultValues=""
        entityId="{{ billing_detail_id.value }}"
        formId="orgBillingDetails.edit"
        name="Modal admin form"
        overflowType="scroll"
        pageUuid="60ad1955-db9b-4211-9e0d-be144da63d01"
        showModal="{{show_edit.value}}"
        title="Edit billing details {{ get_billing_detail_info.data.billingDetailsName[0]}} ({{ get_billing_detail_info.data.client[0]}})"
      />
      <Module
        id="modalAdminForm_sync"
        afterSubmit="get_billing_detail_info"
        debug=""
        defaultValues=""
        entityId="{{ billing_detail_id.value }}"
        formId="orgBillingDetails.createOnKleer"
        name="Modal admin form"
        overflowType="scroll"
        pageUuid="60ad1955-db9b-4211-9e0d-be144da63d01"
        showModal="{{show_sync.value}}"
        title="Sync billing details {{ get_billing_detail_info.data.billingDetailsName[0]}} ({{ get_billing_detail_info.data.client[0]}})"
      />
      <Module
        id="modalAdminForm_disable"
        afterSubmit="get_billing_detail_info"
        debug=""
        defaultValues=""
        entityId="{{ billing_detail_id.value }}"
        formId="orgBillingDetails.delete"
        name="Modal admin form"
        overflowType="scroll"
        pageUuid="60ad1955-db9b-4211-9e0d-be144da63d01"
        showModal="{{show_disable.value}}"
        title="Disable billing details {{ get_billing_detail_info.data.billingDetailsName[0]}} ({{ get_billing_detail_info.data.client[0]}})"
      />
      <Module
        id="modalAdminForm_enable"
        afterSubmit="get_billing_detail_info"
        debug=""
        defaultValues=""
        entityId="{{ billing_detail_id.value }}"
        formId="orgBillingDetails.enable"
        name="Modal admin form"
        overflowType="scroll"
        pageUuid="60ad1955-db9b-4211-9e0d-be144da63d01"
        showModal="{{show_enable.value}}"
        title="Enable billing details {{ get_billing_detail_info.data.billingDetailsName[0]}} ({{ get_billing_detail_info.data.client[0]}})"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
