void main() async {
  print("Inicio del programa");
  try {
    String res = await httpGet("http://localhost");
    print("Exito: $res");
  } on Exception catch (e) {
    print("Error: $e");
  } catch (e) {
    print("Upps algo terrible paso");
  } finally {}
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  throw Exception("No hay parametros en el url");
  throw "NOT FOUND";
  /* return "hello world"; */
}
