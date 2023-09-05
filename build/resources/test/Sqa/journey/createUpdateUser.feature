Feature: Create and update user

  Scenario:
    * def createUser = call read('classpath:Sqa/reqres/user/post/crearUsuario.feature')
    * def respuestaUser = $createUser.response
    * def id = $createUser.response.id
    * print respuestaUser

    * def requestCreate = {"name": "laura","job": "leader"}
    * def updateUser = call read('classpath:Sqa/reqres/user/put/actualizarUsuario.feature') id, requestCreate