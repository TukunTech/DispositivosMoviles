Feature: Actualizar datos personales correctamente

  @ActualizarDatosPersonalesPaciente
  Scenario: Actualizar datos personales correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud PUT con nuevos valores para los datos personales
    Then se recibe una respuesta con el estado 200
    And los datos personales del paciente se actualizan y devuelven en el cuerpo de la respuesta.

  Scenario: Fallo al actualizar datos personales de paciente inexistente
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud PUT para un ID de paciente inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El paciente solicitado no existe, no se puede actualizar."

  Scenario:  No se pudo actualizar el paciente por datos inválidos
    Given que el Endpoint "/api/v1/pacientes/{id}" está disponible
    When se envía una solicitud PUT con datos inválidos
    Then se recibe una respuesta con el estado 400
    And un mensaje de error indicando que los datos no son válidos.
