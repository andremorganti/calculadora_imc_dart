import 'dart:io';
import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double calculaIMC() {
    return _peso / pow((_altura / 100), 2);
  }

  String qualificaIMC(double imc) {
    Map<double, String> tabelaIMC = {
      16: 'Magreza grave',
      17: 'Magreza Moderada',
      18.5: 'Magreza Leve',
      25: 'Saudável',
      30: 'Sobrepeso',
      35: 'Obesidade Grau I',
      40: 'Obesidade Grau II',
      50: 'Obesidade Grau III'
    };

    String imcQualificado = 'Obesidade Grau III';
    for (var key in tabelaIMC.keys) {
      if (imc <= key) {
        imcQualificado = tabelaIMC[key].toString();
        break;
      }
    }

    return imcQualificado;
  }
}
