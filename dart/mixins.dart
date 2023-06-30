void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final batman = new Murcielago();
  batman.caminar();
  batman.volar();

  final juan = new Pato();
  juan.caminar();
  juan.volar();
  juan.caminar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print("Estoy volando!!");
}

mixin class Caminador {
  void caminar() => print("Estoy caminando");
}

mixin class Nadador {
  void nadar() => print("puedo nadar");
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminador {}

class Gato extends Mamifero with Caminador {}

class Paloma extends Ave with Volador {}

class Pato extends Ave with Volador, Caminador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
