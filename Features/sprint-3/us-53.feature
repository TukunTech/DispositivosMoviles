Feature: Visualización de Sección Emergency Numbers
  Como cuidador de un adulto mayor,
  Quiero tener acceso a la sección Emergency Numbers,
  Para contactar rápidamente en caso de alguna emergencia.

  Scenario: Lista de contactos de emergencia
    Given que el cuidador accede a la sección de números de emergencia
    When está revisando los contactos
    Then ve una lista de contactos de emergencia previamente configurados

  Scenario: Actualización de contactos de emergencia
    Given que el cuidador está actualizando un contacto
    When añade o modifica un número de emergencia
    Then la información queda almacenada y accesible inmediatamente
