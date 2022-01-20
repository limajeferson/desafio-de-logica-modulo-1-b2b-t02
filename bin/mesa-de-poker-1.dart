import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num valorMinimo, num valorMaximo, List jogadores) {
  //seu codigo
  print('Valor minimo da mesa: R\$ $valorMinimo');
  print('Valor maximo da mesa: R\$ $valorMaximo\n');
  print('Jogadores da mesa:');

  for (var i in jogadores) {
    if (i['valor'] >= valorMinimo &&
        i['valor'] <= valorMaximo) print('${i['nome']}');
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  List jogadores = [];
  for (int i = 2; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {};
    jogador["nome"] = inputs[i];
    jogador["valor"] = int.parse(inputs[++i]);
    jogadores.add(jogador);
  }
  solucao(double.parse(inputs[0]), double.parse(inputs[1]), jogadores);
}

/* 
* CONSIDERAÇÕES *
Mesa de Poker
Numa mesa de poker existe um valor mínimo de dinheiro que você precisa ter para poder jogar naquela mesa. Contudo, há também um limite máximo, pois jogadores com muito mais dinheiro na mesa levam vantagem.

Objetivo
Desenvolver uma aplicação para verificar se o valor informado pelos jogadores está dentro do limite de mínimo e máximo permitido.

Instruções
1. Escreva um algoritmo em Dart que selecione dentre uma lista de jogadores, apenas os valores permitidos para se jogar numa determinada mesa de poker.
2. O algoritmo deve receber o valor mínimo e máximo permitidos, e a lista de jogadores.
3. Mostre os jogadores com os valores entre o mínimo e o máximo permitidos.
Input Format

Entrada:
	valor minimo: 200
	valor maximo: 1000

	nome: Joao
	valor: 300
	
	nome: Denise
	valor: 500
	
	nome: Roberto
	valor: 100
	
	nome: Pedro
	valor: 800
	
	nome: Alice
	valor: 180
Output Format

Saída:
	Valor minimo da mesa: R$ 200.00
	Valor maximo da mesa: R$ 1000.00
	
	Jogadores da mesa:
	Joao
	Denise
	Pedro
Sample Input 0

200 1000 Joao 300 Denise 500 Roberto 100 Pedro 800 Alice 180
Sample Output 0

Valor minimo da mesa: R$ 200.0
Valor maximo da mesa: R$ 1000.0

Jogadores da mesa:
Joao
Denise
Pedro
*/