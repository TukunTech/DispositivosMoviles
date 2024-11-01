Feature: Obtener signos vitales en tiempo real de un adulto mayor

  Scenario: Obtener signos vitales en tiempo real correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/signos-vitales" está disponible
    When se envía una solicitud GET para un ID específico
    Then se recibe una respuesta con el estado 200
    And se incluyen los signos vitales en tiempo real en el cuerpo de la respuesta.

  Scenario: Fallo al obtener signos vitales en tiempo real
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/signos-vitales" está disponible
    When se envía una solicitud GET y el servicio no está accesible
    Then se recibe una respuesta con el estado 500
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "No se pudieron obtener los signos vitales en este momento."
