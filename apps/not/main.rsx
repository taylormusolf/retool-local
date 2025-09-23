<App>
  <Include src="./functions.rsx" />
  <ModuleContainerWidget
    id="moduleContainer"
    backgroundColor="white"
    isGlobalWidgetContainer={true}
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="eab56"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="eab56"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cdb7c"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="8e1f6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="firstName"
        label="First name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2769b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastName"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2d05d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="profilePhotoUrl"
        label="Profile photo URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0bb2a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="googleId"
        label="Google ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3b193"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="googleToken"
        label="Google token"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d61e1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="hashedPassword"
        label="Hashed password"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3caa6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="organizationId"
        label="Organization ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fb749"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ac085"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ab490"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="lastLoggedIn"
        label="Last logged in"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a7331"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="28281"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="resetPasswordToken"
        label="Reset password token"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="33c20"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="resetPasswordExpires"
        label="Reset password expires"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f83df"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="sid"
        label="Sid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8a3dd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="userName"
        label="User name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="68d80"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="twoFactorAuthSecret"
        label="Two factor auth secret"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="201cb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="twoFactorAuthEnabled"
        label="Two factor auth enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="690da"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="lastActive"
        label="Last active"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b38ad"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="salesCTADismissed"
        label="Sales cta dismissed"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="28198"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="tutorialCTADismissed"
        label="Tutorial cta dismissed"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6d3a1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="passwordExpiresAt"
        label="Password expires at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d4f46"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="passwordlessToken"
        label="Passwordless token"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="32dda"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="passwordlessTokenExpiresAt"
        label="Passwordless token expires at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c3070"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="userType"
        label="User type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="49f53"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="metadata"
        label="Metadata"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7e1b9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="externalIdentifier"
        label="External identifier"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="31913"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="githubId"
        label="Github ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c6a3e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="twoFactorAuthSettings"
        label="Two factor auth settings"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="77cb2"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="emailIsVerified"
        label="Email is verified"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="601da"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="secretsRotationRunUuid"
        label="Secrets rotation run UUID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </ModuleContainerWidget>
</App>
