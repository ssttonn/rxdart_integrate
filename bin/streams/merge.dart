import 'dart:async';

import 'package:rxdart/rxdart.dart';

runMerge() {
  StreamController<int> controller1 = StreamController();
  StreamController<int> controller2 = StreamController();
  MergeStream stream = MergeStream([controller1.stream, controller2.stream]);
  controller1.add(1);
  controller2.add(2);
  controller1.add(3);
  stream.listen(print);
}
