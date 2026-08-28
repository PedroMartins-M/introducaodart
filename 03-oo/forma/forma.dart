import '../../enum.dart';

abstract class Forma {
  tpForma tipoForma;

  // Forma(tpForma varForma) {
  //  this.tipoForma = varForma;
  // }

  // Declarando construtor
  Forma(this.tipoForma);

  // Declarando um metodo abstrato
  double calculaArea();

  // Declarando um metodo de instancia
  void imprimeForma() {
  //   // Quando a variável de instancia é nullable
  //   // Deve ser verificado se ela está nula
  //   if (tipoForma != null) {
      // print("${tipoForma.name} com área de ${calculaArea()}");
      print("${tipoForma.name} com área de ${calculaArea()}");
  //   }
  }
}
