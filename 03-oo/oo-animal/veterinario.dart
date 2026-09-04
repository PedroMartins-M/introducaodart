import 'animal.dart';
import 'tratamento.dart';

class Veterinario {
  String nome;

  Veterinario(this.nome);

    void atender(Animal animal, [Tratamento? tratamento]){
      if (tratamento != null) {
      print('O Veterinário ${nome} atendeu ${animal.nome} com ${tratamento.descricao}');
      } else {
        print('O veterinário ${nome} atendeu ${animal.nome} apenas para consulta geral.');
      }
    }

    @override 
    String toString() {
      return 'Veterinário: ${nome}';
    }
  }