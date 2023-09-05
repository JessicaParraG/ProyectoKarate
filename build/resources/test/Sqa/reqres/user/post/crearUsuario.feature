Feature: Create user

  Background:
    * url 'https://reqres.in/'
    * def respuestaCrearUsuario = read('classpath:Sqa/reqres/user/post/request/crear_usuario.json')

  Scenario Outline: create user
    Given path 'api/users/'
    When method Post
    Then status 201
    * print response

    Examples:
      | name     | job |
      | morpheus | qa  |