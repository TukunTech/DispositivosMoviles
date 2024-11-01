Feature: Obtener datos personales del perfil de un adulto mayor

  Scenario: Obtener datos personales correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud GET para un ID específico
    Then se recibe una respuesta con el estado 200
    And se incluyen los datos personales en el cuerpo de la respuesta.

  Scenario: Fallo al obtener datos personales
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud GET para un ID de adulto inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El perfil solicitado no existe."
