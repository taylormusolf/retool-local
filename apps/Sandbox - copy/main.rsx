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
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
    />
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label="Label!"
      labelPosition="top"
      startPlaceholder="Start date"
      textBetween="-"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    />
    <DynamicWidget_IDidItForTheCc_HelloWorld
      id="helloWorld1"
      collectionUuid="1455dc9a-f879-411f-87ac-6bf83c3fcc2f"
      heightType="fixed"
      name={null}
      otherName={null}
    />
  </Frame>
</App>
