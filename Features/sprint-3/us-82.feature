Feature: Actualizar números de emergencia

  Scenario: Actualizar número de emergencia correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia/{numeroId}" está disponible
    When se envía una solicitud PUT con nuevos datos para el número de emergencia
    Then se recibe una respuesta con el estado 200
    And se incluyen los datos actualizados en el cuerpo de la respuesta.

  Scenario: Fallo al actualizar número de emergencia inexistente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia/{numeroId}" está disponible
    When se envía una solicitud PUT para un número que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el número de emergencia no existe.
