import 'dart:async';
import 'dart:io';
import 'dart:convert';

void solucao(List<double> carrinhoCompras) {
  //seu codigo
  double cart = (carrinhoCompras.reduce((v, e) => v + e));
  if (carrinhoCompras.length > 100) {
    print('Carrinho cheio');
  } else if (carrinhoCompras.length >= 3 && carrinhoCompras.length <= 100) {
    carrinhoCompras.sort();
    print(
        'Total: R\$ ${(cart - carrinhoCompras.first * 50 / 100).toStringAsFixed(2)}');
  } else {
    print('Total: R\$ ${cart.toStringAsFixed(2)}');
  }
}

void main() {
  readLine().listen(processLine);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(inputs.map((element) => double.parse(element)).toList());
}

/* 
* CONSIDERAÇÕES *
Para o Dia dos Namorados, uma loja de presentes investiu em tecnologia e fez uma análise de dados, percebendo que mais de 80% dos seus clientes compravam 2 itens nessa época.

Com o objetivo de aumentar o faturamento, essa loja lançou uma promoção, na qual o cliente que comprar pelo menos 3 itens, tem um desconto de 50% no item de menor valor.

Desenvolver uma aplicação que calcule automaticamente o valor dos produtos do cliente, quando se aplicar essa promoção.

1. Escreva um algoritmo para calcular o valor dos produtos do "carrinho de compras" do cliente.
2. Crie um array chamado carrinhoCompras que receba o valor dos itens comprados pelo usuário.
3. O array pode guardar no máximo 100 itens. Se tiver mais de 100 itens, mostra a mensagem "Carrinho cheio".
4. Se houver 3 itens ou mais no array, verifique qual produto tem o menor valor e aplique o desconto de 50% neste produto.
5. Mostre o valor total da compra.
Input Format

Entrada: item 1: 150.00 item 2: 50.00

Output Format

Saída:
	Total: R$ 200.00
Sample Input 0

150.00 50.00
Sample Output 0

Total: R$ 200.00
*/