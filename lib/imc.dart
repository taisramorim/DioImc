import 'dart:io';
import 'package:imc/support/pessoa.dart';
import 'support/classificacao.dart';

void main() {
  try {
    List<Pessoa> pessoas = [];

    print("Quantas pessoas deseja calcular o IMC?");
    int quantidadePessoas = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < quantidadePessoas; i++) {
      print("\nDigite o nome da pessoa ${i + 1}:");
      String nome = stdin.readLineSync()!;

      print("Digite o peso da pessoa ${i + 1} (em kg):");
      double peso = double.parse(stdin.readLineSync()!);

      print("Digite a altura da pessoa ${i + 1} (em metros):");
      double altura = double.parse(stdin.readLineSync()!);

      Pessoa pessoa = Pessoa(nome, peso, altura);
      pessoas.add(pessoa);
    }

    print("\nResultados: ");

    for (int i = 0; i < quantidadePessoas; i++) {
      double imc = pessoas[i].calcularIMC();
      String classificacao = classificarPeso(imc);
      print(
          "${pessoas[i].nome}, seu IMC é = $imc ($classificacao)");
    }
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
