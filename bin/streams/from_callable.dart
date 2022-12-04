import 'package:rxdart/rxdart.dart';

runFromCallable() {
  FromCallableStream(
          () => Future.delayed(Duration(seconds: 1)).then((_) => throw "Error"))
      .listen(print, onError: (error) {
    print(error);
  });
}
