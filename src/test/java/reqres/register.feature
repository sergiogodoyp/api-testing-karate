Feature: Registrar un usuario

  @smoke @register @regresion
  Scenario: Crear un usuario
    Given url urlBase
    And path "register"
    And header x-api-key = apiKey
    * def user = read('classpath:reqres/data/user.json')
    And request user
    When method post
    Then status 200