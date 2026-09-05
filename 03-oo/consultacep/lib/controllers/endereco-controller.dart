import 'dart:convert';

import 'package:consultacep/models/endereco.dart';
import 'package:http/http.dart' as http;

class EnderecoController {
  Future<Endereco> buscarEndereco(String cep) async{
    final url = Uri.parse('http://viacep.com.br/ws/$cep/json');

    final resposta;

    try{
      resposta = await http.get(url);
    } catch (e) {
      throw Exception("Erro na url:  ${e.toString()}");
    }

    //Status code 200: Conseguiu consultar a API
    if(resposta.statusCode == 200) {
      Map<String, dynamic> cep = jsonDecode(resposta.body);

      //A api não localizou o CEP. pode ser um CEP inválido ou não consta na base de dados no viacep
      if(cep.containsKey('erro') && cep['erro'] == 'true'){

        //Lança uma exceção com o erro
        throw Exception('CEP não encontrado');
      } else {

        //Converte o Json para um objeto endereço
        return Endereco.deJson(cep);
      } 
    } else {

      //Se o Status Code for diferente de 200, retorna uma exceção informando o codigo do erro
      throw Exception("Erro na busca do endereço: ${resposta.statusCode}");
    }
  }
}