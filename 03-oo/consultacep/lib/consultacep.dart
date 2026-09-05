import 'dart:io';
import 'package:consultacep/controllers/endereco-controller.dart';
import 'package:consultacep/models/endereco.dart';

void main(List<String> arguments) async {
  final enderecoController = EnderecoController();

  print("Informe o CEP (formato 00000-000)");
  String? cep = stdin.readLineSync();
  cep = cep!.replaceAll(RegExp('r(0-9)'), '');

  try {
    Endereco endereco = await enderecoController.buscarEndereco(validaCEP(cep));
    print("Logradouro: ${endereco.logradouro}");
    print("Bairro: ${endereco.bairro}");
    print("Municipio: ${endereco.localidade}");
    print("UF: ${endereco.uf}");
  } catch (e) {
    print(e);
  }
}

String validaCEP(String? cep) {
  if (cep == null || cep.isEmpty) {
    throw Exception("CEP inválido!! tente novamente.");
  } else {
    cep = cep.replaceAll(RegExp('r[0-9]'), '');

    //Se a quantidade de números for diferente de 8 retorna uma exceção
    //Caso contrário retorna o CEP, com mensagem de erro
    if (cep.length != 8) {
      throw Exception("CEP inválido, deve possuir 8 números");
    } else {
      return cep;
    }
  }
}
