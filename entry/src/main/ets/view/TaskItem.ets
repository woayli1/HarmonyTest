@Component
export struct TaskItem {
  private startSize: number = 20

  build() {
    //任务列表渲染
    Column() {
      Row({ space: 10 }) {
        Image($r("app.media.startIcon"))
          .width(this.startSize)
          .height(this.startSize)
        Text("完成111任务")
          .fontColor($r("app.color.light_blue"))
          .fontWeight(FontWeight.Bold)
          .fontSize(16)
      }
      .width("100%")

      Text('9:00-12:00')
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.White)
        .margin({ top: 10, left: this.startSize + 10 })
        .width("100%")

      Row() {
        Text("生活")
          .fontColor(Color.White)
      }
      .justifyContent(FlexAlign.Center)
      .margin({ top: 10, left: this.startSize + 10 })
      .width(80)
      .height(30)
      .backgroundColor(Color.Brown)
      .borderRadius("50%")
    }
    .margin({ top: 20 })
    .backgroundColor(Color.Gray)
    .width("100%")
    .padding({ left: 10, top: 10 })
    .height(120)
    .alignItems(HorizontalAlign.Start)
    .borderRadius(20)
  }
}