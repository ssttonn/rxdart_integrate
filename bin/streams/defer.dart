import 'dart:async';

import 'package:rxdart/rxdart.dart';

runDefer() {
  StreamController<int> controller1 = StreamController();
  controller1.add(2);
  controller1.add(10);
  DeferStream(() => controller1.stream).listen(print);
}
