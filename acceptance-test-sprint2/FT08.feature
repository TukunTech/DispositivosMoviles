Feature: Funcionalidades de la sección Appointments

  Como usuario de la aplicación,
  Quiero gestionar mis citas,
  Para visualizar detalles, acceder a opciones y reprogramar citas de manera eficiente.

  Scenario: Visualizar y acceder a opciones de citas
    Given que el developer de TukunTech está trabajando en el home Appointments
    When el home Appointments se implemente
    Then debe visualizar y dar acceso a las opciones de citas.

  Scenario: Visualizar datos de la cita agendada
    Given que el developer de TukunTech está trabajando en Schedule Appointments
    When se implemente correctamente
    Then se visualizan los datos de la cita.

  Scenario: Reprogramar citas
    Given que el developer de TukunTech está trabajando
    When esté implementado el Reschedule Appointments
    Then se muestran las fechas a las que se puede programar la cita.
