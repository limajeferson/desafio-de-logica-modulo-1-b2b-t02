import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<int> idades) {
  //seu codigo
  idades.sort();
  if (idades.last < 18) {
    print('Cresca e apareca');
  } else {
    while (idades.first < 18) {
      idades.removeAt(0);
    }
    print(idades.first);
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs.map((s) => int.parse(s)).toList());
}

/* 
* CONSIDERAÇÕES *
Caçula dos Adultos
Um determinado evento é permitido apenas para maiores de idade. Através de uma lista com as idades dos potenciais participantes.

Objetivo
Desenvolver uma aplicação que determine qual a idade da pessoa mais nova, dentre os que podem participar (maiores de idade).

Instruções
1. Escreva um algoritmo em Dart que receba uma lista contendo as idades das pessoas que tentam participar.
2. Imprima na tela a idade da pessoa mais jovem que pode participar.
3. Se ninguém puder participar, imprima na tela a mensagem “Cresça e apareça”.
Input Format

Entrada: idade: 15 idade: 21 idade: 27 idade: 17 idade: 18

Output Format

Saída:
	18
Sample Input 0

15 21 27 17 18
Sample Output 0

18
*/