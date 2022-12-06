import 'package:rxdart/rxdart.dart';

runSequenceEqual() {
  SequenceEqualStream(Stream.fromIterable([1, 2, 3, 4, 5]),
      Stream.fromIterable([1, 2, 3, 4, 5])).listen(print);
}
