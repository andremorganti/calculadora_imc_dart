import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/utils.dart';

void execute() {
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

  Pessoa pessoa = Pessoa(nome, peso, altura);

  double imc = pessoa.calculaIMC();

  String imcFormatado = Utils.formatarImc(imc);
  print("O IMC é de: $imcFormatado");
  print("");

  String imcqualificado = pessoa.qualificaIMC(imc);
  print("Seu IMC está qualificado como: $imcqualificado");
  print("=====================================================");
}
