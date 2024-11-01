Feature: Agendar una cita

  Scenario: Agendar cita correctamente
    Given el Endpoint "/api/v1/citas" está disponible
    And se envían datos de un paciente y del horario de un doctor
    When se envía una solicitud POST con los datos necesarios
    Then se recibe una respuesta con el estado 201
    And se incluye un recurso de Cita en el cuerpo de la respuesta, con un ID nuevo y los valores registrados.

  Scenario: Fallo al agendar cita con horario no disponible
    Given el Endpoint "/api/v1/citas" está disponible
    And se envía un horario que ya está ocupado
    When se envía una solicitud POST con los datos del paciente y horario del doctor
    Then se recibe una respuesta con el estado 400
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "El horario seleccionado no está disponible."
