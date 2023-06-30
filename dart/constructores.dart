void main() {
  final Map<String, dynamic> rowJson = {
    'name': 'Dr baner',
    'power': 'super fuerza',
    'isActive': true
  };
  Hero ironman =
      new Hero(name: 'tony start', power: 'genio mecanico', isALive: true);
  Hero hulk = Hero.fromJson(rowJson);
  print(ironman);
  print(hulk);
}

class Hero {
  late String name;
  late String power;
  late bool isALive;
  Hero(
      {required String this.name,
      required String this.power,
      required bool this.isALive});
  Hero.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? 'hero',
        power = json["power"] ?? 'human',
        isALive = json["isALive"] ?? true;

  @override
  String toString() {
    return '$name $power ${isALive ? 'yes' : 'no'}';
  }
}
