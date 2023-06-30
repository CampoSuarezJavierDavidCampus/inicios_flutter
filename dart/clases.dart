void main() {
  final wolverine = new Hero();
  print(wolverine);
}

class Hero {
  late String name;
  late List<String> power;

  /* Hero({String? pName, List<String>? pPower}) {
    name = pName ?? 'Unknown';
    power = pPower ?? ['Human'];
  } */
  Hero({this.name = 'Desconocido', this.power = const ['Humano']});
}
