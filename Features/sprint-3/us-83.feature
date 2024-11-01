Feature: Eliminar números de emergencia
  Como Desarrollador
  Quiero permitir al usuario eliminar un número de emergencia a través de una API
  Para gestionar la información de manera eficiente.

  Scenario: Eliminar número de emergencia correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia/{numeroId}" está disponible
    When se envía una solicitud DELETE para un número específico
    Then se recibe una respuesta con el estado 204
    And no se incluye ningún cuerpo en la respuesta.

  Scenario: No se pudo eliminar el número de emergencia porque no existe
    Given el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia/{numeroId}" está disponible
    When se envía una solicitud DELETE para un número que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el número no fue encontrado.
