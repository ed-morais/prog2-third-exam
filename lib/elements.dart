import 'package:prog2_third_exam/element.dart';
import 'dart:io';

class Elements extends Iterable {
  final List<Element> _elements = [];

  Elements() {
    List<String> file = File('data/elements.csv').readAsLinesSync();
    
    for (var c = 1; c < file.length; c++) {
      final data = file[c].split(',');
      final elem = Element(
        weight: int.parse(data[0]),
        symbol: data[1],
        name: data[2],
        latinName: data[3],
      );
      _elements.add(elem);
    }
  }

  @override
  Iterator<Element> get iterator => _elements.iterator;
}
