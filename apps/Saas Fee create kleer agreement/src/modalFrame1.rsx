<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !showModal.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="formTitle1"
      value="### Create Kleer agreement for {{ keyValue1.data.client }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
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
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hoistFetching={true}
      initialData="{{ getFormStructure.data }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
    >
      <KeyValue
        id="keyValue1"
        data="{{ getFormStructure.data }}"
        editIcon="bold/interface-edit-pencil"
        enableSaveActions={true}
        itemLabelPosition="top"
        labelWrap={true}
      >
        <Property
          id="peAccountingClientId"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Pe Accounting Client ID"
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
          id="start_date"
          editable="false"
          editableOptions={{}}
          format="date"
          formatOptions={{ dateFormat: "dd MMM yyyy" }}
          hidden="false"
          label="Start date"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="end_date"
          editable="false"
          editableOptions={{}}
          format="date"
          formatOptions={{ dateFormat: "dd MMM yyyy" }}
          hidden="false"
          label="End date"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="contact_person_name"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Contact person name"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="contact_person_email"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Contact person email"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="currency"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Currency"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="payment_days"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Payment days"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="price"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Price"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="type_of_license"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Type of license"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="amEmail"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="AM email"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="peAccoutingAMId"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="false"
          label="Pe accouting am ID"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="status"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Status"
        />
        <Property
          id="amount"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Amount"
        />
        <Property
          id="discount"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Discount"
        />
        <Property
          id="priceUSD"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Price usd"
        />
        <Property
          id="comments"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Comments"
        />
        <Property
          id="invoice_id"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Invoice ID"
        />
        <Property
          id="created_in_kleer"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Created in kleer"
        />
        <Property
          id="kleer_agreement_id"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Kleer agreement ID"
        />
        <Property
          id="invoice_date"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Invoice date"
        />
        <Property
          id="certified"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Certified"
        />
        <Property
          id="sent"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Sent"
        />
        <Property
          id="paid"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Paid"
        />
        <Property
          id="new_client"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="New client"
        />
        <Property
          id="renewal"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Renewal"
        />
        <Property
          id="created_at"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Created at"
        />
        <Property
          id="updated_at"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Updated at"
        />
        <Property
          id="id"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="ID"
        />
        <Property
          id="account_manager"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Account manager"
        />
        <Property
          id="billing_details"
          editable="false"
          editableOptions={{}}
          format="string"
          formatOptions={{}}
          hidden="true"
          label="Billing details"
          valueOverride="{{ item[0] }}"
        />
        <Property
          id="customer_org"
          editable="false"
          editableOptions={{}}
          format="tags"
          formatOptions={{ automaticColors: true }}
          hidden="true"
          label="Customer org"
        />
      </KeyValue>
      <Event
        event="submit"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="submitFormData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="formButton1"
      submit={true}
      submitTargetId="form1"
      text="Create agreement"
    />
  </Footer>
</ModalFrame>
