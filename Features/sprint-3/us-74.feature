Feature: Cancelar Cita

  Scenario: Cancelar cita correctamente
    Given que el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud DELETE para una cita específica
    Then se recibe una respuesta con el estado 204
    And no se incluye ningún cuerpo en la respuesta.

  Scenario: No se pudo cancelar la cita porque no existe
    Given que el Endpoint "/api/v1/citas/{id}" está disponible
    When se envía una solicitud DELETE para una cita que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que la cita no fue encontrada.
