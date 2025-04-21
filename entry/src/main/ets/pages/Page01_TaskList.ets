import { TaskItem } from "../view/TaskItem"

@Styles
function tele2() {

}


@Entry
@Component
struct Page01_TaskList {
  scroller: Scroller = new Scroller()
  private aarr: number[] = CreateArr.initData()

  @Styles
  columnStyle(){
    .margin({ top: 20 })
    .width("100%")
  }

  build() {
    Column() {

      Text("你好，AAA")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .fontColor($r("app.color.light_blue"))
      Text("让每天的工作效率提高")
        .fontSize(14)
        .fontColor(Color.Gray)
        .margin({ top: 10 })

      Column() {
        Row() {
          Text("今日任务")
            .fontSize(26)
            .fontWeight(FontWeight.Bold)
            .fontColor($r("app.color.light_blue"))
          Text("查看更多")
            .fontSize(14)
            .fontColor($r("app.color.light_blue"))
        }
        .border({
          width: 1,
          color: Color.Black
        }).justifyContent(FlexAlign.SpaceBetween)
        .alignItems(VerticalAlign.Bottom)
        .columnStyle()

      }

      Stack({ alignContent: Alignment.TopStart }) {
        //任务列表
        Scroll(this.scroller) {
          Column() {
            ForEach(this.aarr, () => {
              TaskItem()
            })
          }
        }
        .padding(10)
        .scrollBar(BarState.Off)
        .onWillScroll((xOffset: number, yOffset: number, scrollState: ScrollState) => {
          console.info('onWillScroll xOffset=' + xOffset + ',,,yOffset=' + yOffset)
        })
        .onScrollEdge((side: Edge) => {
          console.info('To the Edge')
        })
        .onScrollStop(() => {
          console.info('Scroll Stop')
        })
        .onDidScroll(() => {
          console.info('Scroll Finish')
        })

        Column({ space: 10 }) {
          Button('scroll 150')
            .margin({ top: 10 })
            .height('5%')
            .onClick(() => {
              this.scroller.scrollBy(0, 150)
            })

          Toggle({ type: ToggleType.Switch })
            .backgroundColor(Color.Brown)
            .borderRadius(20)
        }

      }
    }
    .width("100%")
    .height("100%")
    .alignItems(HorizontalAlign.Start)
    // .backgroundColor(Color.Red)
    // .justifyContent(FlexAlign.SpaceEvenly)
    .padding({
      left: 10,
      top: 10,
      right: 10,
      bottom: 10
    })
  }

  aboutToAppear(): void {

  }

  aboutToDisappear(): void {

  }
}

class CreateArr {
  static initData(): number[] {
    const arr: number[] = []

    for (let index = 0; index < 6; index++) {
      arr.push(index)
    }
    return arr
  }
}