Feature: Añadir HIstoria Clinica de un Paciente

  @AñadirEntradaHistoriaClinica
  Scenario:  Añadir entrada correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/historia-clinica" está disponible
    When se envía una solicitud POST con los datos de la nueva entrada
    Then se recibe una respuesta con el estado 201
    And se incluye la nueva entrada en el cuerpo de la respuesta.

  Scenario: No se pudo añadir la entrada por datos inválidos
    Given que el Endpoint "/api/v1/pacientes/{id}/historia-clinica" está disponible
    When se envía una solicitud POST con datos inválidos
    Then se recibe una respuesta con el estado 400
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "Los datos de la entrada son invá