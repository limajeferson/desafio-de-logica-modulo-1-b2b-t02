import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(num numero, num limiteInferior, num limiteSuperior) {
  //seu codigo aqui
  print(numero >= limiteInferior && numero <= limiteSuperior
      ? 'Pertence'
      : 'Nao pertence');
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(num.parse(inputs[0]), num.parse(inputs[1]), num.parse(inputs[2]));
}

/* 
* CONSIDERAÇÕES *
Jacqueline e Emanuel acabaram de sair da aula, desesperados pela quantidade de exercícios de matemática que a professora passou como dever de casa. Para a sorte deles, você já sabe programar e vai desenvolver uma aplicação para ajudá-los a resolver todos os problemas do assunto: intervalo entre dois números.

Eles pediram, então, para que você desenvolva uma aplicação que consiga fazer a prova-real de todos os exercícios da professora.

1. Faça um algoritmo que receba três argumentos: numero, limiteInferior e limiteSuperior.
2. Verificar se o número informado pertence ao conjunto que é limitado pelo limiteInferior e limiteSuperior.
3. Pertencer ao conjunto significa que o número informado deve ser maior ou igual ao limiteInferior e menor ou igual ao limiteSuperior.
Ao realizar a verificação do número, imprimir na tela o resultado, "Pertence" ou "Nao pertence"

Input Format

Entrada:
	número: 10
	limite inferior: 5
	limite superior: 20
Output Format

Saída:
	Pertence
Sample Input 0

10 5 20
Sample Output 0

Pertence
*/