Feature: Obtener horarios de doctores

  Scenario: Obtener horarios correctamente
    Given el Endpoint "/api/v1/horarios" está disponible
    When se envía una solicitud GET
    Then se recibe una respuesta con el estado 200
    And se incluye la lista de horarios en el cuerpo de la respuesta.

  Scenario: Fallo al obtener horarios
    Given el Endpoint "/api/v1/horarios" está disponible
    When se envía una solicitud GET y el servicio no está accesible
    Then se recibe una respuesta con el estado 500
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "No se pudo obtener la lista de horarios. Intente nuevamente más tarde."
