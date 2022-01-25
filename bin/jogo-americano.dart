import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List jogadores) {
  //seu codigo
  num R = 0;
  int ordem = 0;

  for (var i in jogadores) {
    R += i['numero'];
  }

  for (int i = 1; i < R; i++) {
    ordem++;
    if (ordem == jogadores.length) ordem = 0;
  }

  print('Resultado: $R\nGoleiro(a): ${jogadores[ordem]['nome']}');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  List jogadores = [];
  for (int i = 0; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {
      "nome": inputs[i],
      "numero": int.parse(inputs[i + 1])
    };
    jogadores.add(jogador);
    i++;
  }

  solucao(jogadores);
}

/* 
* CONSIDERAÇÕES *
Num jogo de futebol entre amigos é muito comum que ninguém queira ser o 
goleiro. Para resolver esse impasse, um time decidiu utilizar o 
“Jogo Americano".

Neste jogo, o time faz uma roda e cada um dos jogadores "joga" um número X 
qualquer. Após isso, o capitão do time soma todos os números jogados e obtém 
o resultado R.

Depois, começa a contar de 1 até R apontando inicialmente para si mesmo e 
falando alto e claramente "um", depois para o jogador à sua direita e falando 
"dois" e assim por diante. O goleiro será aquele que estiver sendo apontado 
quando o capitão chegar a R.

1. Escreva um algoritmo que receba uma lista contendo o nome e o número do 
jogador.
2. O número de jogadores pode variar entre 5 e 11.
3. Some todos os números informados pelos jogadores.
4. Faça a contagem dos jogadores, de 1 até o total somado (R).
5. Se R for maior que a quantidade de jogadores, “dê mais uma volta” começando 
pelo capitão do time novamente, até alcançar R.
6. Imprima na tela o nome do goleiro.
Input Format

Entrada:
	nome: Amanda
	número: 2

	nome: Sabrina
	número: 1

	nome: Samanta
	número: 1

	nome: Carina
	número: 2

	nome: Beatriz
	número: 3
Output Format

Saída:
    Resultado: 9
	Goleiro(a): Carina
Sample Input 0

Amanda 2 Sabrina 1 Samanta 1 Carina 2 Beatriz 3
Sample Output 0

Resultado: 9
Goleiro(a): Carina
*/