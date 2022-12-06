import 'package:rxdart/rxdart.dart';

runNever() {
  NeverStream().listen(print);
}
