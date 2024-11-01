Feature: Eliminar un doctor

  Scenario: Eliminar doctor correctamente
    Given el Endpoint "/api/v1/doctores/{id}" está disponible
    When se envía una solicitud DELETE para un ID específico
    Then se recibe una respuesta con el estado 200
    And se confirma la eliminación del doctor en el cuerpo de la respuesta.

  Scenario: Fallo al eliminar doctor inexistente
    Given el Endpoint "/api/v1/doctores/{id}" está disponible
    When se envía una solicitud DELETE para un ID de doctor inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El doctor solicitado no existe, no se puede eliminar."
