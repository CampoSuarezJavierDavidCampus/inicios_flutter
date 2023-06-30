void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 3, 2, 4, 4, 6, 5, 9, 9, 7];

  final Iterable listReverseNumbers = numbers.reversed;
  print('listado: $numbers');
  print('cantidad: ${numbers.length}');
  print('ultimo: ${numbers.first}');
  print('primer: ${numbers.last}');
  print('reverse: ${listReverseNumbers.map((e) => e * 4).toList()}');
  final Iterable<int> numbersGreterThan5 = numbers.where((num) => num > 5);
  print('numeros mayores que 5: ${numbersGreterThan5.toSet()}');
}
