import 'dart:io';

void main(List<String> args) {
  print("Informe um número: ");
  final numero = stdin.readLineSync();
  if ( numero != null && int.tryParse(numero) != null){
    final numerConvertido = int.tryParse(numero);

  //   if(numerConvertido! % 2 == 0){
  //     print("Número par");
  //   } else{
  //     print("Numero impar");
  //   }
  // } 

  print(numerConvertido! %2 == 0 ? "Número par" : "Numero impar");


  }
  else {
    print("Numero inteiro inválido");
}
}  
