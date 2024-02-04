// 装饰器，用于装饰类、结构、方法和变量、赋予其特殊的含义。
import TodoListItem from './TodoListItem';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  private task: string[] = [
    "早起晨练",
    "准备早餐",
    "阅读名著",
    "学习ArkTS",
    "看剧放松"
  ];

  build() {
    Column({ space:16 }){
      Text('待办')
        .fontSize('28vp')
        .fontWeight(FontWeight.Bold)
        .lineHeight('33vp')
        .width('80%')
        .margin({
          top: '24vp',
          bottom: '12vp'
        })
        .textAlign(TextAlign.Start)

      ForEach(this.task, (item, index) => {
        TodoListItem({
          content: item
        });
      }, item => item)
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#F1F3F5")
  }

}