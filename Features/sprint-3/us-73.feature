Feature: Obtener detalles de una cita

  Scenario: Obtener detalles de cita correctamente
    Given el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud GET para una cita existente
    Then se recibe una respuesta con el estado 200
    And se incluyen los detalles de la cita en el cuerpo de la respuesta.

  Scenario: Fallo al obtener detalles de cita inexistente
    Given el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud GET para una cita que no existe
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "La cita solicitada no existe."
