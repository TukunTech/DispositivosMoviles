Feature: Actualizar información de un doctor

  Scenario: Actualizar información del doctor correctamente
    Given el Endpoint "/api/v1/doctores/{id}" está disponible
    When se envía una solicitud PUT con nuevos valores para nombre, especialidad y contacto
    Then se recibe una respuesta con el estado 200
    And los datos del doctor se actualizan y devuelven en el cuerpo de la respuesta.

  Scenario: Fallo al actualizar doctor inexistente
    Given el Endpoint "/api/v1/doctores/{id}" está disponible
    When se envía una solicitud PUT para un ID de doctor inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El doctor solicitado no existe, no se puede actualizar."
