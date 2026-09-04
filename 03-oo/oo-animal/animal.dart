import 'alimento.dart';
import 'especie.dart';

abstract class Animal {
  String nome;
  double peso;
  Alimento alimento;
  Especie especie;

  Animal(this.nome, this.peso, this.alimento, this.especie);

  void fazerSom(); 
  void comer() => print('$nome está comendo ${alimento.tipo}');
}