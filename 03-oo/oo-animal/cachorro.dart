import 'animal.dart';
import 'alimento.dart';
import 'especie.dart';
import 'brinquedo.dart';

class Cachorro extends Animal {
  int fofura;
  List<Brinquedo> brinquedos = [];

  Cachorro(String nome, double peso, this.fofura, Alimento alimento)
  : super(nome, peso, alimento, Especie.MAMIFERO);

  void incluirBrinquedo(Brinquedo brinquedo) => brinquedos.add(brinquedo);
  void brincar(Brinquedo brinquedo) => print('${nome} brinca com ${brinquedo.nome}');

  @override
  void fazerSom() => print('${nome} faz: Au Au!');
}