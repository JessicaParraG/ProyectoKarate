Feature: Obtain user information

  Background:
    * url 'https://reqres.in/'

    Scenario: get user
      * def user = 2
      Given path 'api/users/', user
      When method Get
      Then status 200
      * print response