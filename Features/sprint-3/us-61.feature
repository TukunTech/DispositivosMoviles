Feature: Obtener Historial signos vitales

  @ObtenerHistorialSignosVitales
  Scenario:  Obtener historial de signos vitales por fechas correctamente
    Given que el Endpoint "/api/v1/pacientes/{id}/historial-signos" está disponible
    And se especifica un rango de fechas
    When se envía una solicitud GET con las fechas proporcionadas
    Then se recibe una respuesta con el estado 200
    And se incluye el historial de signos vitales dentro del rango de fechas en el cuerpo de la respuesta.

  Scenario: Fallo al obtener historial de signos vitales por rango de fechas incorrecto
    Given que el Endpoint "/api/v1/pacientes/{id}/historial-signos" está disponible
    And se especifica un rango de fechas inválido o sin registros
    When se envía una solicitud GET con estas fechas
    Then se recibe una respuesta con el estado 404
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "No se encontraron datos en el rango de fechas especificado."