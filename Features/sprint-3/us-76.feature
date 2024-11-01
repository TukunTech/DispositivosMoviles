Feature: Agregar un adulto mayor

  Scenario: Crear perfil de adulto mayor correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/perfil" está disponible
    When se envía una solicitud POST con valores para nombre, edad y contacto de emergencia
    Then se recibe una respuesta con el estado 201
    And el nuevo perfil se incluye en el cuerpo de la respuesta, con un ID nuevo y los valores registrados.

  Scenario: Fallo al crear perfil con información duplicada
    Given que el Endpoint "/api/v1/adultos-mayores/perfil" está disponible
    When se envía una solicitud POST con datos que coinciden con un perfil existente
    Then se recibe una respuesta con el estado 400
    And se incluye un mensaje en el cuerpo de la respuesta que indica: "Un perfil con la misma información ya existe."
