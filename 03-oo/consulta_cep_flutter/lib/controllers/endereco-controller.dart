import '../exceptions/api-invalida-exception.dart';
import '../exceptions/cep-invalido-exception.dart';
import '../exceptions/cep-nao-encontrado-exception.dart';
import '../models/endereco.dart';
import '../service/CEPService.dart';
import 'package:http/http.dart' as http;

class EnderecoController {

  CEPService cepservice = CEPService();

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
    return cepservice.consultar(cep);
  }
}
