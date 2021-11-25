@bored

Feature: Testar os resultados da API bored, que retorna atividade para se fazer quando está entediado

Background: Executa antes de cada teste.
    * def url_base = "https://www.boredapi.com/api/"
    * def jsonBored = read('jsonBored.json')

Scenario: Testar se ao buscar atividades do tipo recreacional 
    de fato sempre retorna atividades recreacionais
    Given url url_base
    And path 'activity?type=recreational'
    When method get
    Then status 200
    And match $.type == "recreational"

Scenario: Testando realizar um post em uma api que permite apenas get
    Given url url_base
    And path 'activity' 
    And request jsonBored
    When method post
    Then status 200