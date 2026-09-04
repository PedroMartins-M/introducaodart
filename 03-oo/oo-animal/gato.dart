import 'animal.dart';
import 'especie.dart';
import 'alimento.dart';
import 'brinquedo.dart';

class Gato extends Animal {

  int fofura;
  List<Brinquedo> brinquedos = [];

  Gato(String nome, double peso, this.fofura, Alimento alimento)
  : super(nome, peso, alimento, Especie.MAMIFERO);

  incluirBrinquedo(Brinquedo brinquedo) => brinquedos.add(brinquedo);
  void brincar(Brinquedo brinquedo) => print('${nome} brinca com ${brinquedo.nome}');

  @override
  void fazerSom() => print('${nome} fez: Meow!');
}