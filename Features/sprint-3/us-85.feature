Feature: Agregar medicamentos pendientes
  Como Desarrollador
  Quiero permitir al usuario crear medicamentos pendientes a través de una API
  Para que puedan ser gestionados adecuadamente.

  Scenario: Crear medicamento pendiente correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes" está disponible
    When se envía una solicitud POST con los datos del medicamento pendiente
    Then se recibe una respuesta con el estado 201
    And se incluye el medicamento creado en el cuerpo de la respuesta.

  Scenario: No se pudo crear el medicamento pendiente por datos inválidos
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes" está disponible
    When se envía una solicitud POST con datos inválidos
    Then se recibe una respuesta con el estado 400
    And un mensaje de error indicando que los datos no son válidos.
