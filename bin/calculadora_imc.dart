import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;

void main(List<String> arguments) {
  print("Entre com o seu nome:");
  var nome = stdin.readLineSync();
  print("Bom dia $nome!");

  print("Entre com o seu peso:");
  var peso = stdin.readLineSync();
  print("Bom dia $peso!");

  print("Entre com o seu altura:");
  var altura = stdin.readLineSync();
  print("Bom dia $altura!");
}
