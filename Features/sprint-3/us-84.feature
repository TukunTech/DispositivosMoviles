Feature: Obtener medicamentos pendientes
  Como Desarrollador
  Quiero obtener los medicamentos pendientes de un adulto mayor a través de una API
  Para mostrarlos al personal médico o familiar.

  Scenario: Obtener medicamentos pendientes correctamente
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes" está disponible
    When se envía una solicitud GET para un adulto mayor específico
    Then se recibe una respuesta con el estado 200
    And se incluyen los medicamentos pendientes del adulto mayor en el cuerpo de la respuesta.

  Scenario: No se puede obtener los medicamentos pendientes porque el adulto mayor no existe
    Given el Endpoint "/api/v1/adultos-mayores/{id}/medicamentos-pendientes" está disponible
    When se envía una solicitud GET para un adulto mayor que no existe
    Then se recibe una respuesta con el estado 404
    And un mensaje de error indicando que el adulto mayor no fue encontrado.
