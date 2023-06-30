void main() {
  final Map<String, dynamic> Ditto = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{1: "ditto/back.png", 4: "ditto/front.png"}
  };
  final Map<int, Map<String, dynamic>> pokemons = {1: Ditto};
  print(pokemons);
  print('Name: ${Ditto['name']}');
  print('sprites: ${Ditto['sprites']}');
  print('back: ${Ditto['sprites'][1]}');
  print('front: ${Ditto['sprites'][4]}');
}
