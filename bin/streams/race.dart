import 'dart:async';

import 'package:rxdart/rxdart.dart';

runRace() {
  StreamController<int> controller1 = StreamController();
  StreamController<int> controller2 = StreamController();
  StreamController<int> controller3 = StreamController();
  controller1.add(1);
  controller2.add(10);
  controller3.add(5);
  controller1.add(2);
  controller1.add(3);
  controller3.add(9);
  RaceStream([controller1.stream, controller2.stream, controller3.stream])
      .listen(print);
}
