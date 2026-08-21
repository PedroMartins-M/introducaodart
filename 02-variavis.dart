void main(List<String> args) {
  // sintaxe
  // <tipo> nome = atribuição;

  String nome = "Fulano de Tal";
  
  // Declarar e atribuir em linhas diferentes
  int idade;
  idade= 18;

  double cotacaoDolar = 5.19;

  // contratação de string
  print("Nome: " + nome + "Idade: " + idade.toString());

  // interpolação de String
  print("Nome: ${nome} - Idade: ${idade.toString()}");

  // Fortimente tipada
  // Não permite valor em uma variável cujo o tipo não comporta o valor
  // idade = 1.5;

  // Permite atibuir quando não há perda de precisão. Um inteiro cabe dentro de um double
  cotacaoDolar = 5;

  // Não permite incluir um double dentro de um inteiro, pois poderia haver perda de precisão
  //idade = cotacaoDolar;

  // Nome da variavel não pode utilizar caracteres especiais, espaços ou palavras reservadas
  // https://dart.dev/language/

  // Palavra reservada var para declarar uma variável com tipo inferido
  var tipoinferido = 1;

  // Aceita qualquer coisa
  dynamic idadeDynamic;
  idadeDynamic = "Onze";

  // Object é uma classe base de todos os objetos
  // Isso significa que todos os tipos do dart, incluindo os tipos primarios, são do tipo Object

  Object IdadeObject;
  IdadeObject = 15;
  IdadeObject = "Quinze";
  IdadeObject = new Int();

  Object idade_object_snack_case;
  Object idadeObjectCamelCase;

  print(idadeDynamic); 
}