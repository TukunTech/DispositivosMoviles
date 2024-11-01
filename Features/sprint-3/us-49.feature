Feature: Visualización de Sección Vital Signs
  Como cuidador de un adulto mayor,
  Quiero monitorear los signos vitales del adulto mayor,
  Para asegurarme de que su salud se mantiene estable y detectar cualquier cambio de manera temprana.

  Scenario: Alerta ante valores fuera de rango
    Given que el cuidador está monitoreando los signos vitales
    When los valores estén fuera de los rangos normales
    Then el cuidador será alertado para tomar las medidas necesarias

  Scenario: Consultar historial de signos vitales
    Given que el cuidador revisa lecturas previas
    When esté consultando el historial de signos vitales
    Then verá los valores registrados anteriormente
