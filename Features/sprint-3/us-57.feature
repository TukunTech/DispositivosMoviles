Feature:Obtener Datos Personales Paciente

  @ObtenerDatosPersonalesPaciente
  Scenario: Obtener datos personales correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud GET para un ID específico
    Then se recibe una respuesta con el estado 200
    And los datos personales del paciente se incluyen en el cuerpo de la respuesta.

  Scenario: US60 - Fallo al obtener datos personales
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud GET para un ID de paciente inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El paciente solicitado no existe."
