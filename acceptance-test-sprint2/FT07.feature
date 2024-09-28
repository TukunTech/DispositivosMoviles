Feature: Desarrollo secciones del Sistema de TukunTech “Clinics”

  Como developer de TukunTech,
  Quiero implementar las diferentes secciones del sistema,
  Para poder visualizar, registrar, y acceder a la información de pacientes, doctores y citas.

  Scenario: Desarrollo del panel de pacientes postoperatorios
    Given la sección de cabecera del sistema
    When se muestra el panel de pacientes postoperatorios
    Then la información de los pacientes postoperatorios y sus signos vitales se visualiza

  Scenario: Desarrollo del panel de pacientes UCI
    Given la sección de cabecera del sistema
    When se muestra el panel de pacientes UCI
    Then la información de los pacientes UCI y sus signos vitales se visualiza

  Scenario: Desarrollo de home registration
    Given la sección de cabecera del sistema
    When se muestra la opción de home registration
    Then las opciones de registro disponibles en la aplicación se visualizan

  Scenario: Desarrollo de patient registration
    Given la sección de cabecera del sistema
    When se muestra la opción de patient registration
    Then se permite el registro de nuevos pacientes para la clínica

  Scenario: Desarrollo de lista de doctores
    Given la sección de cabecera del sistema
    When se muestra la opción de list doctors
    Then la lista de doctores en la clínica se visualiza

  Scenario: Desarrollo de lista de pacientes
    Given la sección de cabecera del sistema
    When se muestra la opción de list patient
    Then la lista de pacientes y sus datos se visualizan

  Scenario: Desarrollo de home Appointments
    Given la sección de cabecera del sistema
    When se muestra la opción de home Appointments
    Then las opciones de citas se visualizan y se accede a ellas