import 'package:modulo_2/modulo_2.dart' as modulo_2;

class Alimento{
  String nome;
  double peso; 
  String cor;
  Alimento(this.nome, this.peso, this.cor);
  printAlimento(){
    print('Este(a) $nome pesa $peso e tem a cor $cor');
  }
}
class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}): super(nome, peso, cor);
  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura dias para ser consumida');
  }
}

mostrarMadura(String nome, int dias, {required String cor}){
  if (dias >= 8) {
    print('A $nome está madura');
  } else{
    print('A $nome não está madura');
  }

  if(cor != null){
    print('A $nome é $cor');
  }
}

bool funcVerificaMadura(int dias){

  if (dias > 15) {
    return  true;
  } else {
    return  false;
  }
}



// extends serve para herdar infos de outra classe
// o super é a referencia da classe superior a chamada
class Legumes extends Alimento implements Bolo{
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar):super(nome, peso, cor);
  cozinhar(){
    if(isPrecisaCozinhar){
      print('Pronto, o $nome está cozinhando');
    }else{
      print('nem precisa cozinhar');
    }
  }
  
  @override
  void assar() {
    // TODO: implement assar
  }
  
  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
    print('tirar a casca')
  }
  
  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citricas extends Fruta{
  double nivelAzedo;
  Citricas(String nome, double peso, String cor, String sabor int diasDesdeColheita, this.nivelAzedo): super(nome, peso, cor, sabor, diasDesdeColheita);
}


abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

void main() {
  String nome = 'laranja';
  double peso = 0.500;
  String cor = 'Verde';
  String sabor = 'Cítrico';
  int diasDesdeColheita = 10;
  bool isMadura;

  mostrarMadura(nome, diasDesdeColheita, cor: cor);

  Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta2 = Fruta('uva', 500, 'roxo', 'Doce', 30);
  print(fruta1.cor);
  print(fruta2);
  fruta1.estaMadura(5);
  fruta2.estaMadura(400);

}

