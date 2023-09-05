Feature: Delete an usee

  Background:
    * url 'https://reqres.in/'

  Scenario: get user
    * def user = 2
    Given path 'api/users/', user
    When method Delete
    Then status 204
    * print response