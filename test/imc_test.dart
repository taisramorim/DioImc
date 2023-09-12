import 'package:test/test.dart';
import 'package:imc/support/pessoa.dart';
import 'package:imc/support/classificacao.dart';

void main() {
  group('Calculadora de IMC', () {
    test('Teste de cálculo de IMC', () {
      Pessoa pessoa = Pessoa("Teste", 70.0, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Teste de classificação de peso', () {
      expect(classificarPeso(18.0), equals("Abaixo do peso"));
      expect(classificarPeso(21.0), equals("Peso normal"));
      expect(classificarPeso(28.0), equals("Sobrepeso"));
      expect(classificarPeso(33.0), equals("Obesidade grau 1"));
      expect(classificarPeso(38.0), equals("Obesidade grau 2"));
      expect(classificarPeso(40.0), equals("Obesidade grau 3"));
    });

    test('Teste de exceção para altura e peso zero', () {
      expect(() => Pessoa("Teste", 0.0, 0.0), throwsA(isA<Exception>()));
    });
  });
}
