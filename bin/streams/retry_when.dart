import 'dart:async';

import 'package:rxdart/rxdart.dart';

runRetryWhen() {
  var errorHappened = false;
  RetryWhenStream<int>(
    () => Stream.periodic(const Duration(seconds: 1), (i) => i).map((i) {
      if (i == 3 && !errorHappened) {
        throw 'We can take this. Please restart.';
      } else if (i == 4) {
        throw 'It\'s enough.';
      } else {
        return i;
      }
    }),
    (e, s) {
      errorHappened = true;
      if (e == 'We can take this. Please restart.') {
        return Stream.value('Ok. Here you go!');
      } else {
        return Stream.error(e, s);
      }
    },
  ).listen(print, onError: print);
}
