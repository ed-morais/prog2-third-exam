import 'package:prog2_third_exam/elements.dart';

class Molecule implements Comparable {
  late String _formula;
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
        // elements.forEach((element) {
        //   if (element.symbol == formula[0]) {
        //     weight += int.parse(element.weight);
        //   }
        // });
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
    // TODO: implement compareTo
    throw UnimplementedError();
  }
  // regex: [A-Z][a-z]?\d*
}

void main() {
  var molecule = Molecule(formula: 'C2H6O', name: 'Ethane');
  print(molecule.weight);
  var molecule2 = Molecule(formula: 'G2H5', name: 'Ethane');
  print(molecule2.weight);
  var molecule3 = Molecule(formula: 'C2H3O2NH4', name: 'Ethane');
  print(molecule3.weight);
  var molecule4 = Molecule(formula: 'Na2Cl3', name: 'Ethane');
  print(molecule4.weight);
}
