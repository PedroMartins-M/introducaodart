 void main(List<String> args) {
  
  // Declaração por interferencia
  var nomeCurso = "Fundamento Dart";
  print("Curso: ${nomeCurso}");

  // Modificador FINAL
  // Uma variavel declarada como final pode ser apenas atribuida apenas uma vez e
  // Seu valor não pode ser alterado
  // Final nomeCursoFinal = "Fundamentos Dart"
  // Posso declarar em um ponto de sistema e atribuir outro em valor
  final nomeCursofinal = "Fundamentos Dart";
  print(nomeCursofinal);

  //
  // nomeCursoFinal = "Fundamentos flutter";

  // Modificador CONST
  // Uma variavel declarada como const pode ser atribuida apenas uma vez e seu valor não pode ser alterado
  const nomeCursoConst = "Fundamentos Dart";
  print(nomeCursoConst);
}