import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(double minuto, double km) {
  //seu codigo
  double totalPagar = 0;

  km > 10 ? totalPagar += (10 * .7) + (.5 * (km - 10)) : totalPagar += km * .7;

  minuto > 20
      ? totalPagar += (20 * .5) + (.3 * (minuto - 20))
      : totalPagar += minuto * .5;

  print('Total a pagar: R\$ ${totalPagar.toStringAsFixed(2)}');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(double.parse(inputs[0]), double.parse(inputs[1]));
}

/* 
* CONSIDERAÇÕES *
Se a viagem tiver mais de 10km (quilômetros), cada km adicional (acima de 10) fica mais barato, passando a custar apenas 50 centavos por km. Caso a viagem dure mais de 20 minutos, cada minuto adicional (acima de 20) fica mais barato, passando a custar apenas 30 centavos por minuto.

Você deve implementar o cálculo do valor a ser pago pelo cliente.

1. Escreva um algoritmo que calcule o valor de uma viagem, conforme o tempo e distância percorridos.
2. Deve cobrar 70 centavos por cada quilômetro de viagem e 50 centavos por minuto de viagem
3. A entrada é 2 variáveis, minuto que é a duração da viagem e km que é o quilômetro pecorrido.
4. Se a viagem tiver mais de 10km, cada km adicional custa 50 centavos por km.
5. Se a viagem durar mais de 20 minutos, cada minuto adicional custa 30 centavos por minuto.
6. Imprima na tela o valor que deve ser pago pelo cliente.
  6.1. Lembre-se de arredondar o valor final a ser pago.
Input Format

Entrada:
	minuto: 20
	km:  10
Output Format

Saída:
   Total a pagar: R$ 17.00
Sample Input 0

20 10
Sample Output 0

Total a pagar: R$ 17.00
*/