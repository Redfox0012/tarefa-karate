@cats

Feature: Testar as operações presentes na api de imagens de gatinhos

Background: Executa antes de cada teste.
    * def url_base = "https://api.thecatapi.com/v1"
    * def request_json = read('jsonCats.json')

Scenario: Testar fazer upload de uma imagem de gatinho com um json vazio e verificar se retorna 411
    Given url url_base
    And path '/images/upload'
    And request request_json
    When method post
    Then status 411

Scenario: Testar se o GET de busca sem passar nada para a busca retorna 404
    Given url url_base
    And path '/search'
    When method get
    Then status 404