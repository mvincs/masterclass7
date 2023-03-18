import './Cartao/cartao.dart';

void main() {
  Cartao mastercad = Cartao('5419825003461210');
  Cartao visa = Cartao('4916641859369080');

  print(validaCartao(mastercad));
  print(validaCartao(visa));
}

bool validaCartao(Cartao card) {
  return card.valido();
}
