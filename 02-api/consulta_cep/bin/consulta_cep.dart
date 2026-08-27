import 'dart:convert';

import 'package:consulta_cep/consulta_cep.dart' as consulta_cep;

// dart pub add http (importa o pacote do pub.dev)
// Declara o http para utilização na classe/função
import 'package:http/http.dart' as http;

Future <void> main(List<String> arguments) async{
  // Futuro: resultado que vai chegar
  // async: permite usa await dentro de função/método
  // await: espera o resultado

  final url = Uri.parse("https://viacep.com.br/ws/17509060/json");

  final resposta = await http.get(url);
  
  if(resposta.statusCode == 200){

    final Map<String, dynamic> dados = jsonDecode(resposta.body);

    if (dados.containsKey('erro')){
      print("CEP não encontrado!");
      return;
    }

    print("Logradouro: ${dados['logradouro']}");
    print("Bairro: ${dados['bairro']}");
    print("Cidade: ${dados['localidade']}");
    print("UF: ${dados['uf']}");


  } else {
    print("Erro na requisição! Status: ${resposta.statusCode}");
  }
}
