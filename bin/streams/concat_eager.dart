import 'dart:async';

import 'package:rxdart/rxdart.dart';

runConcatEager() {
  StreamController<int> controller1 = StreamController();
  StreamController<int> controller2 = StreamController();

  ConcatEagerStream([controller1.stream, controller2.stream]).listen(print);
  controller2.add(20);
  controller1.add(1);
  controller1.close();
}
