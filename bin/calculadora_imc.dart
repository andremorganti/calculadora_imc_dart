import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart' as utils;

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

  double imc = 0.0;

  imc = utils.calculaIMC(
      double.parse(peso.toString()), double.parse(altura.toString()));

  print("Seu IMC é de: $imc");
}
