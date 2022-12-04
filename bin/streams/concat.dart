import 'dart:async';

import 'package:rxdart/rxdart.dart';

runConcat() {
  StreamController<int> controller1 = StreamController();
  StreamController<int> controller2 = StreamController();
  Stream stream = ConcatStream([controller1.stream, controller2.stream]);
  controller2.add(20);
  controller1.add(1);
  controller1.add(5);
  controller1.add(6);
  controller1.close();
  stream.listen(print);
}
