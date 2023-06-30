void main() {
  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = 32432;
  errorMessage = [1, 43, 45];
  errorMessage = {
    [1, 43, 45],
    [1, 43, 45]
  };
  errorMessage = null;
  print(errorMessage);
}
