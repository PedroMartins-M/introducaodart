void main(List<String> args) {
  print("Inclua os dados do aluno no formato NOME | IDADE | CURSO | UF");

  final alunos = [];
  alunos.add("JOÂO|25|DESENVOLVIMENTO DE SISTEMAS|SP");
  alunos.add("MARIA|19|REFLEXOLOGIA|RJ");
  alunos.add("JOSE|50|ADMINISTRAÇÂO|ES");

  print(alunos[0]);
  final aluno = alunos[0].toString().split("|");
  print("\nNome: ${aluno[0]} Idade: ${aluno[1]} Curso: ${aluno[2]} UF: ${aluno[3]}");

  // Utilização de Foreach

  alunos.forEach((alunos){
    print("\nNome: ${aluno[0]} Idade: ${aluno[1]} Curso: ${aluno[2]} UF: ${aluno[3]}");
  });

  // 2º) Adicionar o estudante abaixo no final da lista
  // "SAMIRA|63|PODOLOGIA|SP"

  aluno.add("SAMIRA|63|PODOLOGIA|SP");

  // 3º) Adcionar o estudante abaixo da 2ª posição da Lista
  // "JOAQUIN|36|TST|RS"

  alunos.insert(1, "JOAQUIN|36|TST|RS");
  print(alunos);

  // 4º) Remover a "Maria|19|REFLEXOLOGIA|RJ da Lista" 
  aluno.remove("MARIA|19|REFLEXOLOGIA|RJ");
  print(alunos);

  // 5º) Remover a 3º item da lista
  alunos.removeAt(2);
  print(alunos);

  }