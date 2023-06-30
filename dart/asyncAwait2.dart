void main() {
  emitNumber().listen((int value) {
    print("Stream Value:$value");
  });
}

Stream<int> emitNumber() async* {
  final valueToEmit = [1, 2, 3, 4, 5, 6, 7];
  for (int i in valueToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i * 9;
  }
}
