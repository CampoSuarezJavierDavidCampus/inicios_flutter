void main() {
  print(greetPerson(name: 'javier'));
  print(greetPerson(name: 'daniel', message: 'hola'));
  print(greetPerson(name: 'juan'));
}

String greetPerson({required name, String message = 'hello'}) {
  return "$message $name";
}
