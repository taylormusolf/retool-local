<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="hammerhead"
    resourceName="7c299279-ec49-480f-9e15-de0b8a654b73"
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="a409c"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="a409c"
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
        id="ba654"
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
        id="890a8"
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
        id="f5a2e"
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
        id="9bb85"
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
        id="2e9e7"
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
        id="0528d"
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
        id="9060b"
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
        id="f4d05"
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
        id="c5217"
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
        id="d29a6"
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
        id="2a24c"
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
        id="5e96f"
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
        id="778c9"
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
        id="3d740"
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
        id="f09c0"
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
        id="73a07"
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
        id="e74c8"
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
        id="f354e"
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
        id="dece2"
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
        id="b0551"
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
        id="3f2f8"
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
        id="a9b74"
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
        id="f9061"
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
        id="c332d"
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
        id="42eb3"
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
        id="3da0e"
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
        id="a13e9"
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
        id="c94df"
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
        id="c8539"
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
        id="db435"
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
        id="8a474"
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
    <Button id="button1" text="Button" />
    <Module
      id="not1"
      name="not"
      overflowType="scroll"
      pageUuid="4dce8fc0-7225-11f0-a1d5-47de4f20b7e3"
    />
  </Frame>
</Screen>
