# Roman to Decimal
Esse projeto é uma versão (adaptada para desktop/console) [deste projeto](https://github.com/florinpop17/app-ideas/blob/master/Projects/1-Beginner/Roman-to-Decimal-Converter.md#user-stories).

Se trata de um conversor de número romanos em decimais (base 10).

Também é possível converter números decimais para romanos (entre 1 e 3999).

O usuário pode fazer inúmeras conversões em sequência. Se desejar encerrar a execução, é necessário digitar EXIT.

## Como usar
É necessário tem o ruby instalado na sua máquina;

Copie o repositório para seu local;

Execute: `bundle install` para instalar as gems necessárias;

No console, dentro na pasta bin/ execute: `ruby begin.rb` - o programa será executado.

## Regras para a entrada de números romanos
Os algorismos permitidos e seus respectivos valores decimais, são:

![Captura de tela de 2022-06-24 18-14-48](https://user-images.githubusercontent.com/87029318/175695666-1c14ee0a-016f-4256-9d3a-9dc6e3fa1c50.png)

Fonte: [Wikipedia](https://en.wikipedia.org/wiki/Roman_numerals)

A ordem precisa ser respeitada, ou será um valor inválido.

Por exemplo, III é o número 3, mas IIIII não é a representação correta do valor 5 (correto V).

Outro ponto são os algorismos que representam 5, 50 e 500, que só podem aparecer uma vez na representação `(V, L, D)`, diferente dos demais números que podem aparecer até quatro vezes (como o caso do `MMMCM` - 3900).

O maior número que pode ser representado em algorismos romanos é o `MMMCMXCIX` (3999) e o menor é `I` (1). O número 0 não possui uma representação em algorismos romanos.



## User Stories
 -   [ ] Usuário entra com um número romano
 -   [ ] Como resposta é mostrado ao usuário o número decimal (base 10)
 -   [ ] Se o usuário entrar com um valor incorreto, aparece um alerta o sistema requisita novamente que entre com um número romano válido.
 -   [ ] Usuário é capaz de escolher entre a conversão de romano para decimal ou de decimal para romano (caminho inverso).
 -   [ ] O usuário pode realizar várias conversões, até que solicite a saída do sistema (digitando exit).


## Em construção
-   [ ] Testes unitários;
-   [ ] Documentação: regras da estrutura dos números romanos: ordem correta, valor máximo e minimo.

## Nice to Have
-   [ ] Gem para ser usada pelo usuário;

### Gems utilizadas nesse projeto
- RSpec;
- Pry;
- Colorize.
