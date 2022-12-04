import 'dart:async';

import 'package:rxdart/rxdart.dart';

void runCombineLastest() {
  StreamController<int> controller1 = StreamController();
  StreamController<int> controller2 = StreamController();

  CombineLatestStream<int, List<int>>(
      [controller1.stream, controller2.stream], (a) => a).listen(print);
  controller1.add(1);
  controller2.add(10);
  controller1.add(5);
  controller2.add(6);
  controller1.close();
  controller2.close();
}
