Feature: Testing to post functionality from jsonplaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: test post successfully
    * def publicaciones = 'posts'
    * def numeroPublicaciones = 1
    * def respuestaSolicitud = read:('classpath:Sqa/post/response/informacion_publicacion.json')
    Given path publicaciones, numeroPublicaciones
    When method get
    Then status 200
    * print response
    And match respuestaSolicitud == response
