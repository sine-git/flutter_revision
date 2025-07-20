void main(List<String> args) {
  print("Le resultat de la division est ${division(4, 2)}");
}

double? division(double x, double y) {
  if (y == 0) {
    print("Impossible de diviser un nombre par 0");
    throw Exception("Impossible de diviser un nombre par 0");
  }

  return x / y;
}
