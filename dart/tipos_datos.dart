void main() {
  final String pokemon = 'dito';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final List<String> sprites = ["dito/front.png", "dito/back.png"];
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
  """);
}
