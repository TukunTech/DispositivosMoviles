Feature: Desarrollo de Sección Vital Signs
  Como developer,
  Quiero implementar la funcionalidad para monitorear los signos vitales del adulto mayor,
  Para que el sistema alerte al cuidador cuando haya anomalías.

  Scenario: Generación de alertas ante valores anormales
    Given que el sistema recibe datos de signos vitales
    When los signos vitales están fuera del rango configurado
    Then el sistema genera una alerta para el cuidador

  Scenario: Devolver historial en orden cronológico
    Given que el sistema almacena los datos históricos
    When el cuidador consulta el historial de signos vitales
    Then el sistema devuelve los datos en orden cronológico
