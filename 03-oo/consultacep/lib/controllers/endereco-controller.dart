import 'dart:convert';

import 'package:consultacep/exceptions/api-invalida-exception.dart';
import 'package:consultacep/exceptions/cep-invalido-exception.dart';
import 'package:consultacep/exceptions/cep-nao-encontrado-exception.dart';
import 'package:consultacep/models/endereco.dart';
import 'package:http/http.dart' as http;

class EnderecoController {
  String validaCEP(String? cep) {
    if (cep == null || cep.isEmpty) {
      throw CepInvalidoException();
    } else {
      cep = cep.replaceAll(RegExp('r[0-9]'), '');

      //Se a quantidade de números for diferente de 8 retorna uma exceção
      //Caso contrário retorna o CEP, com mensagem de erro
      if (cep.length != 8) {
        throw CepInvalidoException();
      } else {
        return cep;
      }
    }
  }

  Future<Endereco> buscarEndereco(String cep) async {
    final url = Uri.parse('http://viacep.com.br/ws/$cep/json');

    final resposta;

    try {
      resposta = await http.get(url);
    } catch (e) {
      throw ApiInvalidaException( "Erro na url:  $e" );
    }

    //Status code 200: Conseguiu consultar a API
    if (resposta.statusCode == 200) {
      Map<String, dynamic> cep = jsonDecode(resposta.body);

      //A api não localizou o CEP. pode ser um CEP inválido ou não consta na base de dados no viacep
      if (cep.containsKey('erro') && cep['erro'] == 'true') {
        //Lança uma exceção com o erro
        throw CepNaoEncontradoException();
      } else {
        //Converte o Json para um objeto endereço
        return Endereco.deJson(cep);
      }
    } else {
      //Se o Status Code for diferente de 200, retorna uma exceção informando o codigo do erro
      throw ApiInvalidaException("Erro na busca do endereço: ${resposta.statusCode}");
    }
  }
}
