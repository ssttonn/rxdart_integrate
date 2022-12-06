import 'package:rxdart/rxdart.dart';

runRetry() {
  RetryStream(
    () => Stream.value(1).concatWith([Stream<int>.error(Error())]),
    1,
  ).listen(
    print,
    onError: (Object e, StackTrace s) => print(e),
  ); // Prints 1, 1, Instance of 'Error', Instance of 'Error'
}
