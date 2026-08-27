import 'dart:convert';

import 'package:consulta_git/consulta_git.dart' as consulta_git;

import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  final usuarioGithub = 'PedroMartins-M';
  final url = Uri.parse("https://api.github.com/users/$usuarioGithub/repos");

  final resposta = await http.get(url, headers: {'User-Agent': 'Dart-App'});

  if (resposta.statusCode == 200) {
    final List<dynamic> dados = jsonDecode(resposta.body);

    //  print('Nome: ${dados['name'] ?? 'Não informado'}');
    //  print('Login: ${dados['login']}');
    //  print('Bio: ${dados['bio'] ?? 'Sem bio'}');
    //  print('Localização: ${dados['location'] ?? 'Não informado'}');
    //  print('Quantidade de seguidores: ${dados['followers']}');
    //  print('Quantidade de usuários seguidos: ${dados['following']}');
    //  print('Quantidade de repositórios públicos: ${dados['public_repos']}');
    //  print('URL do perfil no Github: ${dados['html_url']}');
    // } else if (resposta.statusCode == 404) {
    //   print('Usuário "$usuarioGithub" não foi encontra');
    // } else {
    // print('Erro na requisição: ${resposta.statusCode}');

    for (var repo in dados) {
      print('Nome do repositório: ${repo['name']}');
    }
  } else if (resposta.statusCode == 404) {
    print('Usuário "$usuarioGithub" não foi encontrado');
  } else {
    print('Erro na requisição: ${resposta.statusCode}');
  }
}
