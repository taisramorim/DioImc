class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (altura <= 0 || peso <= 0) {
      throw Exception("Altura e peso devem ser maiores que zero.");
    }
    return peso / (altura * altura);
  }
}