<App>
  <Include src="./functions.rsx" />
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
    >
      <Button id="button1" text="Module button" />
      <Table
        id="table1"
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ query1.data }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        emptyMessage="No rows found"
        enableSaveActions={true}
        primaryKeyColumnId="59aa1"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        toolbarPosition="bottom"
      >
        <Column
          id="59aa1"
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
          id="3aa58"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="name"
          label="Name"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="951dd"
          alignment="left"
          format="link"
          formatOptions={{ showUnderline: "hover" }}
          groupAggregationMode="none"
          key="email"
          label="Email"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="ea065"
          alignment="left"
          format="datetime"
          groupAggregationMode="none"
          key="signup_date"
          label="Signup date"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="0d8ea"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="role"
          label="Role"
          placeholder="Select option"
          position="center"
          size={100}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="f5e86"
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
  </Frame>
</App>
