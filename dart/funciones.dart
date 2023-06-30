void main() {
  print(greetEveryone());
  Function str = () => 'hello world';
  print(str());
  print("""
    ${addTwoNumbers(3, 3)}
    ${arrowTwoNumbers(3, 3)}
    ${arrowTwoNumbers(3, 9)}
    ${arrowTwoNumbers(3)}
  """);
}

String greetEveryone() {
  return 'Hello everyone';
}

int addTwoNumbers(int a, int b) {
  return a + b;
}

int arrowTwoNumbers(int a, [int b = 0]) => a + b;
