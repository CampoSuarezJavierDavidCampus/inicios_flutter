void main() async {
  print("Inicio del programa");
  try {
    String res = await httpGet("http://localhost");
    print(res);
  } catch (e) {
    print("Error: $e");
  }
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw "NOT FOUND";
  /* return "hello world"; */
}
