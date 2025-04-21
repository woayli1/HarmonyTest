@Entry
@Component
struct Page02_TaskList {
  build() {
    Column() {

      Text("文本")
        .fontSize(20)

      Row()
        .margin({ top: 10 })
        .width(100)
        .height(100)
        .backgroundColor("#532156")

      Row()
        .margin({ top: 10 })
        .width("100vp")
        .height("100vp")
        .backgroundColor("#123456")

      Row()
        .margin({ top: 10 })
        .width("100fp")
        .height("100fp")
        .backgroundColor("#666999")

      Row()
        .margin({ top: 10 })
        .width("100lpx")
        .height("100lpx")
        .backgroundColor("#333555")

      Row()
        .margin({ top: 10 })
        .width("100px")
        .height("100px")
        .backgroundColor("#444666")

      Row()
        .margin({ top: 10 })
        .width(fp2px(100) + "px")
        .height(fp2px(100) + "px")
        .backgroundColor($r("app.color.light_blue"))
    }
    .width("100%")
    .height("100%")
  }
}