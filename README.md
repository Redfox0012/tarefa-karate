# Testes de API usando o Karate

Projeto da disciplina de S206-Qualidade-de-Software Inatel.
<br>
Desenvolvido por:
<br>
• <a href="https://github.com/Uttoni">Utonni Brandani</a>
<br>
• <a href="https://github.com/Redfox0012">Gabriel Henrique da Silva</a>

#

## Sumário
* [Requisitos do ambiente de desenvolvimento](#requisitos)
* [Executando Testes](#executando-testes)
* [Relatórios de testes](#relatorios)

#
## Requisitos do ambiente de desenvolvimento  <a name="requisitos"></a>

1. JDK(java): https://www.oracle.com/java/technologies/javase-downloads.html
2. Maven (mvn): https://maven.apache.org

#
## Executando Testes <a name="executando-testes"></a>
Entre no diretorio principal do projeto clonado e execute o comando para rodar os testes:
>mvn test -Dtest=MinhaSuiteDeTeste

Para execurtar nossa suite de teste:
>mvn test -Dtest=TesteApisTestRunner

ou

>mvn test -Dtest=TesteComTagTestRunner

obs: A classe ``TesteApisTestRunner.java`` roda todos os testes do nosso projeto. A classe ``TesteComTagTestRunner`` Executa de acordo com a tag escolhida na classe. Mude a tag para testar outras ``.tags("@tagDoTesteDesejado")``.

tags já criadas:<br>
• @appleMusic<br>
• @bored<br>
• @cats<br>
#
## Relatórios de testes <a name="relatorios"></a>
O Karate gera uma interface em html após rodar o teste localizado do diretorio ``./target/karate-reports/``, procure o arquivo .html gerado e veja o resultado do teste em um navegador.
<br>

