import 'package:prog2_third_exam/element.dart';
import 'dart:io';

class Elements extends Iterable {
  final List<Element> _elements = [];

  Elements() {
    List<String> file = File('data/elements.csv').readAsLinesSync();
    
    for (var c = 1; c < file.length; c++) {
      final data = file[c].split(',');
      final elem = Element(
        int.parse(data[0]),
        data[1],
        data[2],
        data[3],
      );
      _elements.add(elem);
    }
  }

  // List<Element> get elements {
  //    for (var c = 1; c < _elements.length; c++) {
  //     final data = _elements[c].split(',');
  //     final elem = Element(
  //       int.parse(data[0]),
  //       data[1],
  //       data[2],
  //       data[3],
  //     );
  //     iterable.add(elem);
  //   }
  //   return iterable;
  // }

  @override
  Iterator<Element> get iterator => _elements.iterator;
}

void printTabbed(
  String text, [
  List<int> tabs = const [],
]) {
  final data = text.split('\t');

  for (int i = 0; i < data.length; i++) {
    text = data[i].trim();
    if (i < tabs.length) {
      if (tabs[i] > 0) {
        text = text.padRight(tabs[i]);
      } else if (tabs[i] < 0) {
        text = text.padLeft(tabs[i].abs());
      }
    }
    stdout.write(text);
  }
  stdout.write('\n');
}

void main() {
  const tabs = [7, 13, 13, -6];
  Elements elements = Elements();

  printTabbed('SYMBOL\tNAME\tLATIN\tWEIGHT', tabs);
  elements.forEach(
    (elem) {
      // ! no começo da string 'text' é necessário usar apenas 'elem' ao invés de 'elem.symbol'
      final text = '${elem.symbol}\t${elem.name}\t${elem.latinName}\t${elem.weight}';
      printTabbed(text, tabs);
    },
  );
  print('-' * 40);
}