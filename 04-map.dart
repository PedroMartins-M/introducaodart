void main(List<String> args) {
  final estudante = <String,String>{
    'nome': "Fulano de Tal",
    "Curso": "Desenvolvimento de Sistemas",
  };

  print(estudante);

  final escola = <String,Object>{
    "nome": "Senac Marilia",
    'cursos':[
      {
        'nome': 'Técnico em Desenvolvimenton de Sistemas',
        'descrição':'Implementação de sistemas para web e mobile'
      },

      {
      'nome': 'Técnico em Desenvolvimenton de Sistemas',
      'descrição':'Gerenciamento das NRs- Normas Regulamentares'
      }
    ]
  };
  print(escola);
  print("Escola: ${escola['nome']}");
  for (var curso in escola["cursos"] as List) {
    print("- ${curso['nome']} - ${curso['descrição']}");
  }
}