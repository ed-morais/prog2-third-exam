import 'package:prog2_third_exam/elements.dart';
import 'package:prog2_third_exam/element.dart';

class Molecule implements Comparable<Molecule> {
  late String _formula;
  late Map<Element, int> _elements;
  String name;
  Elements elements = Elements();

  Molecule({required String formula, required this.name}) {
    if (formula.isEmpty) {
      throw Exception('Formula is empty!');
    }
    this.formula = formula;
    this.name = name;
  }

  String get formula => _formula;

  int get weight {
    int weight = 0;
    var splitFormula = [];
    new RegExp(r'[A-z]{1,2}[\d]?').allMatches(formula).forEach((match) {
      splitFormula.add(match.group(0));
    });

    for (var formula in splitFormula) {
      new RegExp(r'[A-z]{1,2}').allMatches(formula).forEach((match) {
        print(match.group(0));
      });
    }
    return weight;
  }

  set formula(String formula) {
    var regex = RegExp(r'[A-z][\d]?');
    if (regex.hasMatch(formula)) {
      _formula = formula;
      print(_formula);
    } else {
      throw Exception('Invalid formula!');
    }
  }

  @override
  int compareTo(other) {
    throw UnimplementedError();
  }
}
