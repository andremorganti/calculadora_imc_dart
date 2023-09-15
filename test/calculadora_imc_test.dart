import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart' as class_pessoa;
import 'package:test/test.dart';

void main() {
  test('Calcula o IMC de peso 70 e altura de 170cm, IMC de 24.221453287197235', () {
    class_pessoa.Pessoa pessoa = class_pessoa.Pessoa('teste', 70, 170);
    expect(pessoa.calculaIMC(), equals(24.221453287197235));
  });
  test('Calcular IMC passando o PESO como ZERO', () {
    class_pessoa.Pessoa pessoa = class_pessoa.Pessoa('teste', 0.0, 170);
    expect(() => pessoa.calculaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular IMC passando a ALTURA como ZERO', () {
    class_pessoa.Pessoa pessoa = class_pessoa.Pessoa('teste', 170, 0.0);
    expect(() => pessoa.calculaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular IMC passando o PESO como NEGATIVO', () {
    class_pessoa.Pessoa pessoa = class_pessoa.Pessoa('teste', -50, 170);
    expect(() => pessoa.calculaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular IMC passando a ALTURA como NEGATIVO', () {
    class_pessoa.Pessoa pessoa = class_pessoa.Pessoa('teste', 80, -170);
    expect(() => pessoa.calculaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });
}
