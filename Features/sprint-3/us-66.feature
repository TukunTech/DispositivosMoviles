Feature: Obtener lista de doctores

  Scenario: Obtener lista de doctores correctamente
    Given el Endpoint "/api/v1/doctores" está disponible
    When se envía una solicitud GET
    Then se recibe una respuesta con el estado 200
    And se incluye una lista de doctores en el cuerpo de la respuesta.

  Scenario: Fallo al obtener la lista de doctores
    Given el Endpoint "/api/v1/doctores" está disponible
    When se envía una solicitud GET y el servicio no está accesible
    Then se recibe una respuesta con el estado 500
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "No se pudo obtener la lista de doctores. Intente nuevamente más tarde."
