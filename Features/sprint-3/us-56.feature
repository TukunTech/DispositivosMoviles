Feature: Agregar un Paciente

  @AñadirPacienteNuevo
  Scenario:  Añadir paciente con nombre único
    Given que el Endpoint "/api/v1/pacientes" está disponible
    When se envía una solicitud POST con valores para nombre, edad y dirección
    Then se recibe una respuesta con el estado 201
    And se incluye un recurso de Paciente en el cuerpo de la respuesta, con un ID nuevo y valores registrados para nombre, edad y dirección.

  Scenario:  Fallo al añadir paciente con nombre existente
    Given que el Endpoint "/api/v1/pacientes" está disponible
    When se envía una solicitud POST con valores para nombre, edad y dirección
    And ya existe un recurso de Paciente con el mismo DNI
    Then se recibe una respuesta con el estado 400
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "Un paciente con los mismos datos ya existe."