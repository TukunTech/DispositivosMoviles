Feature: Agregar números de emergencia

  Scenario: Crear número de emergencia correctamente
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia" está disponible
    When se envía una solicitud POST con los datos del número de emergencia
    Then se recibe una respuesta con el estado 201
    And se incluye el número creado en el cuerpo de la respuesta.

  Scenario: No se pudo crear el número de emergencia por datos inválidos
    Given que el Endpoint "/api/v1/adultos-mayores/{id}/numeros-emergencia" está disponible
    When se envía una solicitud POST con datos inválidos
    Then se recibe una respuesta con el estado 400
    And un mensaje de error indicando que los datos no son válidos.
