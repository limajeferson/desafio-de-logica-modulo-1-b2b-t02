import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(String nome, List<double> cofre) {
  //Seu codigo aqui
  double guardado = cofre.reduce((v, e) => v + e);
  double media = guardado / cofre.length;

  print('$nome ja tem R\$ ${guardado.toStringAsFixed(2)} guardados!');
  print('A media dos depesitos e de R\$ ${media.toStringAsFixed(2)} por mes.');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs[0], inputs.sublist(1).map(double.parse).toList());
}

/* 
* CONSIDERAÇÕES *
1. Escreva um algoritmo em Dart que calcule o total acumulado no cofre até agora.
2. O Algoritmo deve receber o nome e uma lista de valores.
3. Mostre na tela o total acumulado nessa lista e a média dos depósitos.
Input Format

nome: Cristiane
valor: 1
valor: 2
valor: 3
valor: 4
Output Format

Cristiane ja tem R$ 10,00 guardados!
A media dos depositos e de R$ 2,50 por mes.
Sample Input 0

Cristiane 1 2 3 4
Sample Output 0

Cristiane ja tem R$ 10.00 guardados!
A media dos depesitos e de R$ 2.50 por mes.
*/