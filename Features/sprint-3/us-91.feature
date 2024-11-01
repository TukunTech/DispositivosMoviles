Feature: Obtener alertas de estado crítico o advertencia de anomalía para pacientes de clínica
  Como Desarrollador
  Quiero obtener alertas de estado crítico o advertencias de anomalía de un paciente a través de una API
  Para visualizar alertas médicas importantes en tiempo real.

  Scenario: Obtener alerta de estado crítico correctamente
    Given el Endpoint "/api/v1/pacientes/{id}/alertas/estado-critico" está disponible
    When se envía una solicitud GET para un paciente en estado crítico
    Then se recibe una respuesta con el estado 200
    And se incluye una alerta de estado crítico en el cuerpo de la respuesta, con detalles de la anomalía.

  Scenario: No hay alertas de estado crítico
    Given el Endpoint "/api/v1/pacientes/{id}/alertas/estado-critico" está disponible
    When se envía una solicitud GET para un paciente sin alertas activas

