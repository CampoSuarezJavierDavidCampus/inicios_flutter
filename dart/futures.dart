void main() {
  print("Inicio del programa");
  httpGet('sgfgsdgfsd').then((res) {
    print(res);
  }).catchError((err) {
    print("Error $err");
  });
  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw "gfghfghfg";
    return 'Respuesta del programa';
  });
}
