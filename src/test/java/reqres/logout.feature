Feature: Cerrar sesión de un usuario
  @smoke @logout @regresion
  Scenario: Cerrar sesión de un usuario
    Given url urlBase
    And path "logout"
    And header x-api-key = apiKey
    When method post
    Then status 200
    * print response