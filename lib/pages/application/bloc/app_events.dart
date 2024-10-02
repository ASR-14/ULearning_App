abstract class AppEvent {
  const AppEvent();
}

class TringgerAppEvent extends AppEvent {
  final int index;
  const TringgerAppEvent(this.index) : super();
}
