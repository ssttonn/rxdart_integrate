import 'package:rxdart/rxdart.dart';

runRange() {
  RangeStream(1, 10).listen(print);
}
