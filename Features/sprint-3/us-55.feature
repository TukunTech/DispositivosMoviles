Feature: Obtener Lista de Pacientes

  @ObtenerListaPacientes
  Scenario:  Obtener lista de pacientes correctamente
    Given que el Endpoint "/api/v1/pacientes" está disponible
    When se envía una solicitud GET
    Then se recibe una respuesta con el estado 200
    And se incluye una lista de pacientes en el cuerpo de la respuesta.

  Scenario: Fallo al obtener la lista de pacientes
    Given que el Endpoint "/api/v1/pacientes" está disponible
    When se envía una solicitud GET y el servicio no está accesible
    Then se recibe una respuesta con el estado 500
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "No se pudo obtener la lista de pacientes. Intente nuevamente más tarde."