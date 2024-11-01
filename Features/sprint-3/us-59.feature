Feature: Eliminar Datos Personales de un Paciente 

  @EliminarDatosPersonalesPaciente
  Scenario: US64 - Eliminar datos personales correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud DELETE para un ID específico
    Then se recibe una respuesta con el estado 200
    And se confirma la eliminación de los datos personales en el cuerpo de la respuesta.

  Scenario: US65 - Fallo al eliminar datos personales de paciente inexistente
    Given que el Endpoint "/api/v1/pacientes/{id}/datos" está disponible
    When se envía una solicitud DELETE para un ID de paciente inexistente
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El paciente solicitado no existe, no se puede eliminar."
