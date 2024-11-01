Feature: Reagendar una cita

  Scenario: Reagendar cita correctamente
    Given el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud PUT con nuevos datos de fecha y hora
    Then se recibe una respuesta con el estado 200
    And los detalles de la cita se actualizan y devuelven en el cuerpo de la respuesta.

  Scenario: Fallo al reagendar cita inexistente
    Given el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud PUT para un ID de cita inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "La cita solicitada no existe, no se puede reagendar."
