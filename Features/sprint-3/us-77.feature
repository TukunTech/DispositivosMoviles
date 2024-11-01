Feature: Actualizar perfil de un adulto mayor

  Scenario: Actualizar perfil correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud PUT con nuevos valores para los datos personales
    Then se recibe una respuesta con el estado 200
    And los datos del perfil se actualizan y se devuelven en el cuerpo de la respuesta.

  Scenario: Fallo al actualizar perfil inexistente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/perfil" está disponible
    When se envía una solicitud PUT para un ID de adulto inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El perfil solicitado no existe, no se puede actualizar."
