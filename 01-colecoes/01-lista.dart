void main(List<String> args) {
  
  // Tipos genericos

  List<int> listaNumeros =  [1,2,3];

  List<String> listaTextos = ["fulano","beltrano", "Sicrano"];

  // Tipos de Inferência
  var listaNumerosInferencia = [1,2,3];
  var listaTextosInferencia = ["fulano","beltrano", "Sicrano"];

  // Lista vazia
  List<int> listaSemNumeros = [];
  var listaSemNumerosInferencia = <int>[];
  var listaSemTextosInferencia = <String>[];

  // NullSafety

  // Tem que iniciar e os items não podem ser nulos
  List<String> nome;

  // Apresenta erro, pois a lista não esta inicializada
  // print(nome.length);

  nome = [];
  print(nome.length);

  // Apresenta erros, pois a lista não permite itens nulos
  // nome = ["Fulano", null];

  // Apresenta erro, pois a lista não está incializada
  // Não precisa iniciar a lista, porém os itens não podem ser nulos
  List<String>? nomeSemIniciar;
  nomeSemIniciar = null;

  if(nomeSemIniciar != null)
  print(nomeSemIniciar?.length);

  // Precisa iniciar a lista, porém os items podem ser nulos]
  List<String?> nomeItemsNulos;
  // nomeItemsNulos = null;

  nomeItemsNulos = ["Fulano", null];

  // Não precisa inicializar e os itens podem ser nulos
  List<String?>? nomeSemIniciaItensNulos;
  nomeSemIniciaItensNulos = null;
  nomeSemIniciaItensNulos = ["Fulano", null];

  // Declaraco por inferencia
  var nomeItensNulosInferencia = <String?>[null];

  final numeros = [1,2,3,4];

  print(numeros);

  // Método add: adciona um item no final da lista
  numeros.add(5);
  print(numeros);

  final nomes = ["Fulano", "Beltrano"];
  nomes.add("Sicrano");
  print("1º) ${nomes[0]}");
  print("2º) ${nomes[1]}");
  print("3º) ${nomes[2]}");

  // Metodo inset: adciona um novo item em determinada posição
  nomes.insert(0, "Novo primeiro nome");
  print(nomes);

  // Método insertAll: adciona uma lista em outra
  final nomesNovos = ["João", "Maria"];
  nomes.addAll(nomesNovos);
  print(nomes);

  // Método remove: remove item da lista
  nomes.remove("João");
  print(nomes);
  
}