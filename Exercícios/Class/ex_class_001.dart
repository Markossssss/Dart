void main(){
  Carro honda_civic = Carro("210 km/h", "preto", 200);
  Aviao quatorze_biz = Aviao("10 km/h","branco", 10, 6);
  print(honda_civic.cor);
  print(honda_civic.velocidade);
  print(honda_civic.peso);
  print(quatorze_biz.cor);
  print(quatorze_biz.velocidade);
  print(quatorze_biz.num_helices);
}

class Veiculo {
  String velocidade;
  String cor;
  double peso;
  Veiculo(this.velocidade, this.cor, this.peso);
}
class Carro extends Veiculo {
  Carro(String velocidade, String cor, double peso): super(velocidade, cor, peso);
}

class Aviao extends Veiculo {
  int num_helices;
  Aviao(String velocidade, String cor, double peso, this.num_helices): super(velocidade, cor, peso);
}