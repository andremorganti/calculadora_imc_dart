import 'dart:convert';
import 'dart:io';

class Utils {
  static String entradaComLabel(String texto) {
    print(texto);
    return lerString();
  }

  static double entradaDoubleComLabel(String texto, String dica) {
    String valor_entrada = "0.0";
    while (true) {
      print(texto);
      valor_entrada = lerString();
      try {
        return double.parse(valor_entrada);
      } catch (e) {
        print("Valor inválido para peso! Digite algo como $dica");
      }
    }
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
}
