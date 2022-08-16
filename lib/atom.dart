import 'package:prog2_third_exam/elements.dart';

class Atom {
  String symbol;

  Atom(this.symbol) {
    Elements elements = Elements();
    for (var element in elements) {
      if (symbol.toUpperCase() == element.toString().toUpperCase()) return;
    }
    throw ArgumentError('This symbol is invalid!');
  }

  @override
  String toString() => symbol;
}
