Feature: Añadir un doctor nuevo

  Scenario: Añadir doctor con información única
    Given el Endpoint "/api/v1/doctores" está disponible
    When se envía una solicitud POST con valores para nombre, especialidad y contacto
    Then se recibe una respuesta con el estado 201
    And se incluye un recurso de Doctor en el cuerpo de la respuesta, con un ID nuevo y los valores registrados.

  Scenario: Fallo al añadir doctor con información duplicada
    Given el Endpoint "/api/v1/doctores" está disponible
    When se envía una solicitud POST con valores que coinciden con un doctor existente
    Then se recibe una respuesta con el estado 400
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El doctor con la misma información ya existe."
