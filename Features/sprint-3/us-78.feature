Feature: Eliminar perfil de un adulto mayor

  Scenario: Eliminar perfil correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud DELETE para un ID específico
    Then se recibe una respuesta con el estado 200
    And se confirma la eliminación del perfil en el cuerpo de la respuesta.

  Scenario: Fallo al eliminar perfil inexistente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud DELETE para un ID inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El perfil solicitado no existe, no se puede eliminar."
