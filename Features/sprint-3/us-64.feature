Feature: Actualizar información en la historia clínica de un paciente

  Scenario: Actualizar información correctamente
    Given el Endpoint "/api/v1/pacientes/{id}/historia-clinica/{entradaId}" está disponible
    When se envía una solicitud PUT con los nuevos datos de la entrada
    Then se recibe una respuesta con el estado 200
    And se incluye la entrada actualizada en el cuerpo de la respuesta.

  Scenario: No se pudo actualizar la entrada porque no existe
    Given el Endpoint "/api/v1/pacientes/{id}/historia-clinica/{entradaId}" está disponible
    When se envía una solicitud PUT para una entrada que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que la entrada no fue encontrada.
