void main(List<String> arguments) {
  fibonacci(1, 1);
}

double fCalculaImc({required double altura, required double peso}) {
  return peso / (altura * altura);
}

void fibonacci(antecessor1, antecessor2) {
  int proximo = antecessor1 + antecessor2;
  print(' termo1: $antecessor1 termo2: $antecessor2 ');
  print(' resultado = $proximo');
  fibonacci(antecessor2, proximo);
}
