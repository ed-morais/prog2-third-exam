import 'package:prog2_third_exam/element.dart';
import 'dart:io';

class Elements {
  late List<String> _elements;
  List<Element> iterable = [];

  Elements() {
    _elements = File('data/elements.csv').readAsLinesSync();
  }

  List<Element> get elements {
     for (var c = 1; c < _elements.length; c++) {
      final data = _elements[c].split(',');
      final elem = Element(
        int.parse(data[0]),
        data[1],
        data[2],
        data[3],
      );
      iterable.add(elem);
    }
    return iterable;
  }
}

void main() {
  Elements elements = Elements();

  elements.elements.forEach(
    (elem) {
      print(elem);
    },
  );
}