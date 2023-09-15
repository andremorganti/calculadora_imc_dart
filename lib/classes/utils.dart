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

  static formatarImc(double imc) {
    List<String> imc_iterable = imc.toString().split('');

    String imc_var = '';
    const separator = '.';
    bool counting = false;
    int counter_digit = 0;
    for (var i in imc_iterable) {
      if (i == separator) {
        counting = true;
      }
      imc_var = imc_var + i;
      counter_digit = counting ? counter_digit + 1 : counter_digit;
      if (counter_digit > 2) {
        break;
      }
    }
    return imc_var;
  }
}
