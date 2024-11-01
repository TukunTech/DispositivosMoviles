Feature: Obtener signos vitales de un Paciente

  @ObtenerSignosVitalesPaciente
  Scenario:  Obtener signos vitales correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/signos-vitales" está disponible
    When se envía una solicitud GET para un ID específico
    Then se recibe una respuesta con el estado 200
    And se incluyen los signos vitales del paciente en el cuerpo de la respuesta.

  Scenario:  Fallo al obtener signos vitales de paciente inexistente
    Given que el Endpoint "/api/v1/pacientes/{id}/signos-vitales" está disponible
    When se envía una solicitud GET para un ID de paciente inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El paciente solicitado no existe."