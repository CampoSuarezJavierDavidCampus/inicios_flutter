void main() {
  emitNumbers().listen((value) {
    print("stream value: $value");
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (value) {
    /* print("stream $value"); */
    return value;
  }).take(12);
}
