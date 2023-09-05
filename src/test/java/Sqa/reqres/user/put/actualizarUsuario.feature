Feature: Update an existing user

  Background:
    * url 'https://reqres.in/'
    * request {"name": "#(name)", "job": "#(job)"}

  Scenario Outline: update an user
    * def user = 2
    Given path 'api/users/', user
    When method Put
    Then status 200
    * print response

    Examples:
      | name     | job    |
      | morpheus | leader |