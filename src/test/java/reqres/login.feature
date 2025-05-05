Feature: Iniciar Sesion

  @login @regresion
  Scenario Outline: Iniciar sesion exitosamente
    Given url urlBase
    And path "login"
    And header x-api-key = apiKey
    And request
    """
    {
        "email": "#(email)",
        "password": "#(password)"
    }
    """
    When method post
    Then status 200
    And match response.token != ""
    And match response.token == "#string"

    Examples:

    | read('classpath:reqres/data/credenciales.csv')|
