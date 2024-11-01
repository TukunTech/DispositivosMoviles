Feature: Alerta para recordar tomar medicamento pendiente
  Como Desarrollador
  Quiero enviar una alerta para recordar que un adulto mayor debe tomar un medicamento pendiente a través de una API
  Para que los cuidadores puedan recibir recordatorios en tiempo real.

  Scenario: Enviar alerta de medicamento pendiente correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/alertas/medicamento-pendiente" está disponible
    When se envía una solicitud GET para un adulto mayor con un medicamento pendiente
    Then se recibe una respuesta con el estado 200
    And la alerta de medicamento pendiente se incluye en el cuerpo de la respuesta, especificando el medicamento y la hora de la toma.

  Scenario: No hay alertas de medicamento pendiente
    
