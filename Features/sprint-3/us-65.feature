Feature: Eliminar información en la historia clínica de un paciente

  Scenario: Eliminar entrada correctamente
    Given el Endpoint "/api/v1/pacientes/{id}/historia-clinica/{entradaId}" está disponible
    When se envía una solicitud DELETE para una entrada específica
    Then se recibe una respuesta con el estado 204
    And no se incluye ningún cuerpo en la respuesta.

  Scenario: No se pudo eliminar la entrada porque no existe
    Given el Endpoint "/api/v1/pacientes/{id}/historia-clinica/{entradaId}" está disponible
    When se envía una solicitud DELETE para una entrada que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que la entrada no fue encontrada.
