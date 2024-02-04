@Component
export default struct TodoListItem {
  private content: string;
  @State isDone: boolean = false;

  @Builder
  renderImage() {
    Image(this.isDone ? $r('app.media.ic_ok') : $r('app.media.ic_default'))
      .objectFit(ImageFit.Cover)
      .width("28vp")
      .height("28vp")
      .margin("20vp")
  }

  @Builder
  renderText() {
    Text(this.content)
      .fontSize("20fp")
      .fontWeight(500)
      .opacity(this.isDone ? 0.4 : 1)
      .decoration({ type: this.isDone ? TextDecorationType.LineThrough : TextDecorationType.None });
  }

  build() {
    Row() {
      this.renderImage();
      this.renderText();
    }
    .borderRadius("24vp")
    .backgroundColor("#fff")
    .width("93.3%")
    .height("64vp")
    .onClick(() => {
      this.isDone = !this.isDone;
    })
  }
}