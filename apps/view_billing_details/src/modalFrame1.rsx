<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !show.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### {{ get_billing_detail_info.data.billingDetailsName[0] }} ({{ get_billing_detail_info.data.client[0] }})"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="afterSubmit"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <KeyValue
      id="keyValue1"
      data="{{ get_billing_detail_info.data }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      itemLabelPosition="top"
      labelWrap={true}
      minColumnWidth=""
    >
      <Property
        id="companyLegalName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Company legal name (on invoice)"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="objectId"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Object ID (Kleer customer number)"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="available"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Enabled"
      />
      <Property
        id="billingDetailsName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Billing detail name"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="client"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Client"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="peConnected"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Connected to Kleer"
      />
      <Property
        id="peClientId"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Kleer customer id"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="invoiceRecipients"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Invoice recipients"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="verified"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Verified"
      />
      <Property
        id="companyRegNumber"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Company registration number"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="vatNumber"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Vat number"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="address_line1"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Address line 1"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="address_line2"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Address line 2"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="address_city"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Address city"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="address_postalCode"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Address postal code"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="address_state"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Address state"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="country_code"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Country code"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="country"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Country"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="paymentdays"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Paymentdays"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="financeContact"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Finance contact"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="org_default"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Org default"
      />
      <Property
        id="default_for_bu"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Default for bu"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="updatedAt"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
          dateFormat: "d MMM yy,",
          timeFormat: "HH:mm",
        }}
        hidden="false"
        label="Updated at"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="createdAt"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
          dateFormat: "d MMM yy,",
          timeFormat: "HH:mm",
        }}
        hidden="false"
        label="Created at"
        valueOverride="{{ item[0] }}"
      />
      <Property
        id="orgDisabled"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Org disabled"
      />
      <Property
        id="organization"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Organization"
      />
      <Property
        id="country_full"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Country full"
      />
      <Property
        id="buId"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Bu ID"
      />
      <Property
        id="peForeignId"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Pe foreign ID"
      />
      <Property
        id="emsClient"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        label="Ems client"
      />
    </KeyValue>
  </Body>
  <Footer>
    <ButtonGroup2
      id="buttonGroup2"
      alignment="left"
      heightType="auto"
      overflowPosition={4}
    >
      <ButtonGroup2-Button
        id="e031b"
        disabled="{{ !get_billing_detail_info.data.available[0] }}"
        styleVariant="solid"
        text="Edit"
      >
        <Event
          enabled="{{ get_billing_detail_info.data.available[0] }}"
          event="click"
          method="setValue"
          params={{ map: { value: "true" } }}
          pluginId="show_edit"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ !get_billing_detail_info.data.available[0] }}"
          event="click"
          method="showNotification"
          params={{
            map: {
              options: {
                notificationType: "warning",
                title: "Disabled",
                description:
                  "This billing detail is disabled, enable it before editing",
              },
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="1a9bb" styleVariant="outline" text="Sync">
        <Event
          enabled="{{ get_billing_detail_info.data.available[0] }}"
          event="click"
          method="setValue"
          params={{ map: { value: "true" } }}
          pluginId="show_sync"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ !get_billing_detail_info.data.available[0] }}"
          event="click"
          method="showNotification"
          params={{
            map: {
              options: {
                notificationType: "warning",
                title: "Disabled",
                description:
                  "This billing detail is disabled, enable it before syncing with our accounting software",
              },
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="ece45"
        hidden="{{ !get_billing_detail_info.data.available[0] }}"
        styleVariant="danger"
        text="Disable"
      >
        <Event
          event="click"
          method="setValue"
          params={{ map: { value: "true" } }}
          pluginId="show_disable"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="0e63d"
        backgroundColor="{{ theme.success }}"
        borderColor="{{ theme.surfacePrimary }}"
        hidden="{{ get_billing_detail_info.data.available[0] }}"
        styleVariant="custom"
        text="Enable"
      >
        <Event
          event="click"
          method="setValue"
          params={{ map: { value: "true" } }}
          pluginId="show_enable"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
