class Cartao {
  String number;

  Cartao(this.number);

  bool valido() {
    List<String> splitCartao = number.split('');
    bool isValid = true;
    int checkValidacao = 0;

    checkValidacao = multiplicaNumeracao(splitCartao);

    checkValidacao = checkValidacao % 10;

    if (checkValidacao != 0) {
      checkValidacao -= 10;
    }

    isValid = checkValidacao == int.parse(splitCartao.last);

    return isValid;
  }

  int multiplicaNumeracao(List<String> numeroCartao) {
    int resultado = 0;
    int resultadoPosicaoAtual;

    for (var i = 0; i < numeroCartao.length; i++) {
      if (i % 2 == 0) {
        resultadoPosicaoAtual = int.parse(numeroCartao[i]) * 2;
      } else {
        resultadoPosicaoAtual = int.parse(numeroCartao[i]);
      }

      resultado += somaResultadoMultiplicacao(
          resultadoPosicaoAtual.toString().split(''));
    }
    return resultado;
  }

  int somaResultadoMultiplicacao(List<String> resultadoMultiplicacao) {
    int resultado = 0;
    for (var i = 0; i < resultadoMultiplicacao.length; i++) {
      resultado += int.parse(resultadoMultiplicacao[i]);
    }
    return resultado;
  }
}
