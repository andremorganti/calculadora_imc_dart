import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/utils.dart';

void main(List<String> arguments) {
  print("========== Bem vindo a Calculadora de IMC ==========");
  String nome = Utils.entradaComLabel("Qual o seu nome?");

  print("=====================================================");
  print("*** $nome, seja muito bem vindo a Calculadora de IMC!");

  print("");
  print("Vamos coletar algumas informações para poder calcular o IMC!");
  print("=====================================================");

  double peso =
      Utils.entradaDoubleComLabel("Qual o seu peso em quilos?", '61.5');

  print("=====================================================");
  double altura =
      Utils.entradaDoubleComLabel("Qual a sua altura em centímetros?", "165.5");

  print("=====================================================");

  print("");
  print("O seu IMC é:");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print("$nome, $peso, $altura");
  print("Nome: ${pessoa.getNome()}");

  double imc = pessoa.calculaIMC();
  print("O IMC é de: $imc");
}
