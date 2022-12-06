import 'package:rxdart/rxdart.dart';

runRepeat() {
  RepeatStream(
          (count) => intervalStream(Duration(seconds: count == 0 ? 1 : 2)), 3)
      .listen(print);
}

Stream<int> intervalStream(Duration duration) async* {
  for (var i = 0; i <= 3; i++) {
    await Future.delayed(duration);
    yield i;
  }
}
