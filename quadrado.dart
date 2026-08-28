import '03-oo/forma/forma.dart';
import 'enum.dart';

// Herança/Generalização
// Classe Quadrado herda os membros (variáveis de instancia e métodos) 
 class Quadrado extends Forma {

  double lado;

  // Construtor da classe Quadrado
  Quadrado(this.lado) : super(tpForma.Quadrado);

  // Sobrescreve o método abstrato da classe pai
  @override
  double calculaArea() {
    return lado * lado;
  }

}