class Element {
  String symbol;
  String name;
  String latinName;
  int weight;

  Element({required this.weight, required this.symbol, required this.name, required this.latinName});

  @override
  String toString() => symbol;
}
