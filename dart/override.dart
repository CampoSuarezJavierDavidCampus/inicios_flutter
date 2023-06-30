void main() {
  Hero welverine = new Hero(name: 'Welverine', powers: ['regeneracion']);
  print(welverine.name);
  print(welverine.powers);
  print(welverine.toString());
}

class Hero {
  late String name;
  late List<String> powers;
  Hero({required this.name, this.powers = const ['none']});
  @override
  String toString() {
    return '$name - ${powers}';
  }
}
