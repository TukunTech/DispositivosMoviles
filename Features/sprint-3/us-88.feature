Feature: Obtener alertas de estado crítico o advertencia de anomalía para adultos mayores
  Como Desarrollador
  Quiero obtener alertas de estado crítico o advertencias de anomalía de un adulto mayor a través de una API
  Para que los cuidadores puedan monitorear situaciones de riesgo en tiempo real.

  Scenario: Obtener alerta de advertencia de anomalía correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/alertas/estado-critico" está disponible
    When se envía una solicitud GET para un adulto mayor con una alerta activa
    Then se recibe una respuesta con el estado 200
    And la alerta de advertencia de anomalía se incluye en el cuerpo de la respuesta, con los detalles de la anomalía.

  Scenario: No hay alertas de advertencia de anomalía
    Given el Endpoint "/api/v1/adultos-mayores/{id}/alertas/estado-critico" está disponible
    When se envía una solicitud GET para un adulto mayor sin alertas activas
    Then se recibe una respuesta con el estado 200
    And el cuerpo de la respuesta indica que no hay alertas de estado crítico o advertencias de anomalía.
