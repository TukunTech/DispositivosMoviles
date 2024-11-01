Feature: Visualización de Elder Profile
  Como cuidador de un adulto mayor,
  Quiero acceder al perfil del adulto mayor,
  Para revisar o actualizar la información médica relevante.

  Scenario: Visualización de información médica
    Given que el cuidador accede al perfil del adulto mayor
    When está revisando la información médica
    Then verá todos los datos médicos registrados

  Scenario: Actualización de información
    Given que el cuidador está actualizando información
    When realiza cambios en el perfil del adulto mayor
    Then la información queda registrada y disponible para futuras consultas
