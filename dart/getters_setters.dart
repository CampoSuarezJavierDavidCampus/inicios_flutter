void main() {
  final Square mySquare = new Square(side: -10);
  print('Square Area: ${mySquare.calculateArea()}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side > 0, 'side most be >= 0'),
        _side = side;

  double calculateArea() {
    return _side * _side;
  }
}
