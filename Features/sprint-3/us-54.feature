Feature: Desarrollo de Sección Emergency Numbers
  Como developer,
  Quiero implementar la sección Emergency Numbers,
  Para que los cuidadores puedan acceder y actualizar los contactos de emergencia de manera eficiente.

  Scenario: Almacenamiento seguro de contactos de emergencia
    Given que el cuidador añade o modifica un número de emergencia
    When se envían los datos al sistema
    Then el sistema los almacena de manera segura y los muestra en futuras consultas

  Scenario: Acceso rápido a contactos de emergencia
    Given que el sistema es accesible en emergencias
    When el cuidador accede a la lista de contactos de emergencia
    Then el sistema muestra la información de manera rápida y precisa
