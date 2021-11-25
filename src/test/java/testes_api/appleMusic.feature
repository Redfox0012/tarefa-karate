@appleMusic

Feature: Testar a api do apple music

Scenario: Testar o limite de 50 resultados para uma busca que retorne muitos usando o termo Love
    Given url 'https://itunes.apple.com/search?term=Love'
    When method get
    Then status 200
    And match $.resultCount == 50
    And match $.results == '#[50]'

Scenario: Testar se ao buscar Maroon 5 o primeiro resultado de fato é este 
    e se os tipos de dados retornados são coerentes com o esperado
    Given url 'https://itunes.apple.com/search?term=Maroon+5&entity=allArtist'
    When method get
    Then status 200
    And match each $.results contains {wrapperType:"#string", artistType:"#string", artistName:"#string"}
    And match $.results[0].artistName == "Maroon 5"
