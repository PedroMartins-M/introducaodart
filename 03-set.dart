void main(List<String> args) {
  // SET{} não permite valores duplicados;
  Set<int?> numeros = {1,1,1,1,1,1,2,2,2,3,4};
  numeros.forEach(print);

  // Método List.toSet transforme uma lista em um set
  var numeroList = {1,1,1,1,1,1,1,1,1,1,1,1};
  numeroList.forEach(print);

  print("\n list convertida para SET");
  var numerosSet = numeroList.toSet();
  numerosSet.forEach(print);

  var conjunto1 = {1,2,3,4,5,6};
  var conjunto2 = {1,2,3,7};

  // Método difference: apresenta apenas itens exclusivos dos dois conjuntos
  print(conjunto1.difference(conjunto2));
  print(conjunto2.difference(conjunto1));
  
  // Método union: junta dois sets
  print(conjunto1.union(conjunto2));

  // Método intersction
  print(conjunto1.intersection(conjunto2));

  // lookup: procura o item no SET, se encontrar retorna o valor, caso contrário retorna null
  var nomes = {"Fulano", "Beltrano", "Sicrano"};
  print(nomes.lookup(4));

  //retorna um item através do indice
  print("Segundo item do SET: ${nomes.elementAt(1)}");
}