void main(List<String> args) {
  String nomeNonSafety;

  // Não permite utilizar variavel sem inicializ-la

  nomeNonSafety = 'valor';
  print(nomeNonSafety);

  String? nomeNullSafety;
  print(nomeNullSafety);
  if(nomeNullSafety != null )
  print("Variavel nomeNullSafety está vazia:  ${nomeNullSafety.isEmpty}");

  // ?? é um operador ternário. Ser a variável estiver nula.
  // Exevutará a empressão do lado direito do operador ??
   
  String? nomeNullSafety2;
  print("Variável nomeNullSafety2 está vazia: ${nomeNullSafety2 ?? "Não atribuido"}");

  print("Variável nomeNullSafety2 está vazia: ${nomeNullSafety2 ?? true}");

  // ! ignora aa validações do null safety e você fica responsável em garantir que a variavel não está nula
  String? nomeNullSafety1;
  print("Variavel nomeNullSafety está vazia:  ${nomeNullSafety!.isEmpty}");
}