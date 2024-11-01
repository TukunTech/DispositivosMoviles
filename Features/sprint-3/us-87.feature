Feature: Eliminar medicamento pendiente
  Como Desarrollador
  Quiero permitir al usuario eliminar un medicamento pendiente a través de una API
  Para gestionar la información de manera eficiente.

  Scenario: Eliminar medicamento pendiente correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes/{medicamentoId}" está disponible
    When se envía una solicitud DELETE para un medicamento específico
    Then se recibe una respuesta con el estado 204
    And no se incluye ningún cuerpo en la respuesta.

  Scenario: No se pudo eliminar el medicamento pendiente porque no existe
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes/{medicamentoId}" está disponible
    When se envía una solicitud DELETE para un medicamento que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el medicamento no fue encontrado.
