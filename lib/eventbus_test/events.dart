
import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class BaseEvent {
  void fire(){
    eventBus.fire(this);
  }
}

class ColorChangeEvent extends BaseEvent{
  String colorStr;

  ColorChangeEvent.setColor(this.colorStr);

  notify(){
    fire();
  }
}

