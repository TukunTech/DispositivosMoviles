Feature: Actualizar medicamento pendiente
  Como Desarrollador
  Quiero permitir al usuario actualizar un medicamento pendiente a través de una API
  Para mantener la información actualizada.

  Scenario: Actualizar medicamento pendiente correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes/{medicamentoId}" está disponible
    When se envía una solicitud PUT con los nuevos datos del medicamento pendiente
    Then se recibe una respuesta con el estado 200
    And se incluye el medicamento actualizado en el cuerpo de la respuesta.

  Scenario: No se pudo actualizar el medicamento pendiente porque no existe
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes/{medicamentoId}" está disponible
    When se envía una solicitud PUT para un medicamento que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el medicamento no fue encontrado.
