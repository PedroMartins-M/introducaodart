import 'alimento.dart';
import 'brinquedo.dart';
import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'tratamento.dart';
import 'veterinario.dart';

void main() {
  // Criando os objetos básicos (Alimentos e Brinquedos)
  Alimento racaoCao = Alimento('Ração para Cães');
  Alimento racaoGato = Alimento('Sachê de Peixe');
  Brinquedo bola = Brinquedo('Bolinha de Borracha');

  // Instanciando os Animais (Polimorfismo)
  Animal a1 = Cachorro('Thor', 15.5, 10, racaoCao);
  Animal a2 = Gato('Felix', 4.2, 8, racaoGato);

  // Testando ações dos animais
  a1.fazerSom(); // Executa o som do Cachorro
  a2.fazerSom(); // Executa o som do Gato

  // Usando a variável bola para tirar o aviso de código não utilizado
  if (a1 is Cachorro) {
    a1.incluirBrinquedo(bola);
    a1.brincar(bola);
  }

  // Instanciando Veterinário e Tratamento
  Veterinario vet = Veterinario('Dra. Mariana');
  Tratamento vacina = Tratamento('aplicação de Vacina');

  // Imprime o veterinário diretamente usando o toString()
  print(vet);

  // Executando os atendimentos (sem e com o parâmetro opcional)
  vet.atender(a1);          // Atendimento simples
  vet.atender(a2, vacina);  // Atendimento com tratamento
}