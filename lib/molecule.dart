class Molecule implements Comparable {
  final String moleculeFormula;

  Molecule({required this.moleculeFormula}) {
    var regex = RegExp(r'([A-Z][a-z]*)(\d*)');
    if (formula.isEmpty) {
      throw ArgumentError('Formula cannot be empty!');
    }
  }

  String get formula {
    return moleculeFormula;
  }

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    throw UnimplementedError();
  }
  // regex: [A-Z][a-z]?\d*
}
