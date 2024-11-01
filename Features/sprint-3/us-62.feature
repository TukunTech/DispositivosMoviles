Feature: Obtener HIstoria Clinica de un Paciente

  @ObtenerHistoriaClinica
  Scenario:  Obtener historia clínica correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/historia-clinica" está disponible
    When se envía una solicitud GET para un paciente específico
    Then se recibe una respuesta con el estado 200
    And se incluye la historia clínica del paciente en el cuerpo de la respuesta.

  Scenario:  No se puede obtener la historia clínica porque el paciente no existe
    Given que el Endpoint "/api/v1/pacientes/{id}/historia-clinica" está disponible
    When se envía una solicitud GET para un paciente que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el paciente no fue encontrado.