Feature: Testing to users functionality from jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: test user successfully
    * def respuestaFeatureaPublicaciones = call read('classpath:Sqa/placeholder/post/publicaciones.feature')
    * def respuestaUsuario = read('classpath:Sqa/placeholder/user/response/informacion_usuario.json')
    * def usuarios = 'users'
    * def numeroUsuarios = 8

    Given path usuarios, numeroUsuarios
    When method Get
    Then status 200
    * print response
