// Ejercicio2- programa que devuelve una lista con todos los elementos unicos de otra lista
void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final par =
      numeros.where((numero) {
        bool resultado = !true;
        if (numero % 2 == 0) {
          resultado = !false;
        }
        return resultado;
      }).toList();
  print("litas original: $numeros");
  print("multiplos de 2: $par");
}
