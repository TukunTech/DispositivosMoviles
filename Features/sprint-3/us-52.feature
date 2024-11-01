Feature: Desarrollo de Sección Elder Profile
  Como developer,
  Quiero implementar la funcionalidad de gestión del Elder Profile,
  Para que los cuidadores puedan acceder y actualizar los datos importantes.

  Scenario: Almacenar cambios de inmediato
    Given que el cuidador actualiza el perfil
    When se envían nuevos datos del adulto mayor
    Then el sistema almacena y refleja esos cambios de inmediato

  Scenario: Presentación de información completa
    Given que el perfil es accesible
    When el cuidador accede al perfil del adulto mayor
    Then el sistema presenta toda la información de manera precisa y completa
