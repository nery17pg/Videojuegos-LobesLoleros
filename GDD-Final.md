# Lobelito: Entre los Muertos
## 1. High Concept
## 2. Experiencia central
## 3. Perfil de jugador
Jugador intermedio orientado a desafío cognitivo y tensión psicológica.

Motivaciones principales:

- Curiosidad (descubrir patrones y reglas)
- Supervivencia bajo presión
- Dominio progresivo del sistema
## 4. Core Loop
1. Patrullar
2. Detectar anomalías
3. Recordar reglas
4. Tomar decisión
5. Sobrevivir o fallar

**Input del jugador:** El jugador se mueve, observa el entorno y decide cómo reaccionar ante una anomalía (intervenir, reportar o ignorar).

**Respuesta del sistema:** El juego valida la decisión: elimina la anomalía si fue correcta o aplica una penalización inmediata si fue incorrecta.

**Cambio de estado:** Se modifica el estado del juego: disminuyen vidas, aparecen nuevas anomalías o avanza el tiempo.

**Decisión siguiente:** Con la nueva situación, el jugador debe reevaluar reglas, riesgo y estrategia.

**Repetición con variación:** El ciclo se repite, pero cambian la ubicación, tipo o combinación de anomalías, aumentando la tensión cognitiva.

## 5. Dinámicas esperadas
## 6. Mundo y conflicto
## 7. Interfaz conceptual
## 8. MVP
Genera tensión y aprendizaje sin desarrollar el juego completo.
- Incluye:
  - Un nivel jugable básico
  - Sistema de reglas
  - Número de anomalías reducido
  - Opciones limitadas de intervención acordes al pequeño número de anomalías disponibles
  - Consecuencias inmediatas al romper una regla

**Número de escenas o niveles iniciales:**
  - Un cementerio funcional como escenario, incluye: caseta de vigilancia, sendero principal, mausoleo y zonas oscuras periféricas.
  - Un turno completo jugable de 8 horas dentro del juego.

**Mecánicas que sí estarán:**
  - Exploración del entorno  
    El jugador debe recorrer el cementerio durante su turno nocturno para inspeccionar distintas áreas asignadas.
  
  - Toma de decisiones bajo presión  
    Ante cada evento, el jugador decide cómo reaccionar: ignorar, escapar, permanecer inmóvil y reportar la anomalía.
  
  - Gestión del tiempo  
    El turno dura 8 horas dentro del juego.
  
  - Uso de herramientas del velador  
    El jugador cuenta con recursos limitados.
  
  - Sistema de anomalías  
    Visuales (tumbas abiertas, estatuas movidas).
  
  - Consecuencia inmediata  
    Si rompes una regla ocurre un evento fatal.

**Sistemas que NO estarán:**
  - Combate contra entidades
  - IA perseguidora activa
  - Progresión narrativa profunda
  - Inventario complejo
  - Herramientas múltiples (solo linterna básica)
  - Sistema de habilidades
  - Anomalías auditivas complejas
  - Multijugador
  - Múltiples escenarios (cementerios)
  - Finales múltiples

**Condición de victoria:**
  - Sobrevivir las 8 horas del turno sin perder todas las vidas
  - Aplicar correctamente las reglas hasta que el tiempo llegue al final del turno

**Condición de derrota:**
  - Perder las 3 vidas por romper reglas
  - Interactuar físicamente con una anomalía prohibida
  - Tomar una decisión que contradiga explícitamente una regla activa y agote las oportunidades restantes
## 9. Riesgos y trade-offs
### Riesgos
- **Repetitividad:** El loop puede volverse predecible si no hay suficiente variabilidad.
- **Frustración excesiva:** El castigo inmediato puede provocar abandono si el aprendizaje no es claro.
- **Sobrecarga cognitiva:** Demasiadas reglas simultáneas pueden saturar al jugador.
- **Percepción de injusticia:** Si las reglas no son claras, la experiencia se percibe arbitraria.
- 
**Mayor riesgo:** 
Que el sistema se perciba injusto o arbitrario. El mayor peligro no es la dificultad, sino que el jugador sienta que perdió sin entender por qué.

Este juego depende completamente de:
- Interpretación correcta de reglas.
- Coherencia entre anomalía y norma.
- Claridad en la relación causa–efecto.
- Si el jugador rompe una regla y no puede identificar exactamente qué hizo mal, la experiencia deja de ser tensión cognitiva y se convierte en frustración.

### Trade-offs:
Simplicidad mecánica vs. variedad de gameplay
Decisión: Core loop simple.
Ganancia:
Fácil de entender.
Permite enfocarse en la tensión psicológica.
Costo:
Puede volverse repetitivo si las anomalías no cambian lo suficiente.
Información limitada vs. claridad del sistema
Decisión: Interfaz mínima y sin ayudas extras.
Ganancia:
Mayor inmersión.
Incrementa la paranoia ambiental.
Costo:
Los jugadores pueden sentirse perdidos.
Mayor riesgo de percibir el sistema como injusto.
Castigo inmediato vs. accesibilidad
Decisión: Romper alguna de las reglas desencadena consecuencias inmediatas.
Ganancia: 
Incrementa la tensión y el miedo psicológico.
Refuerza la importancia de las reglas y recordarlas.
Costo:
Frustración en los jugadores primerizos.
Abandono del videojuego.
Aprendizaje por error vs. sensación de justicia
Decisión: El jugador aprende rompiendo las reglas.
Ganancia: 
Genera dominio progresivo del sistema.
Hace que cada decisión tenga peso.
Costo:
Si la relación causa-efecto no es clara, se percibe como arbitrario.
## 10. Lo que eliminamos
**Múltiples escenarios (cementerios).** El equipo tomó esta decisión debido a la falta de tiempo para poder diseñar e implementar escenarios radicalmente diferentes unos entre otros.

**Entorno 3D.** La concepción inicial del juego contemplaba una exploración de un entorno tridimensional, sin embargo, modelar todos los escenarios y anomalías tomaría demasiado tiempo, lo cual lo hizo inviable y preferimos un entorno 2D; si bien se sacrifica inmersión ya que algunas mecánicas descartadas estaban relacionadas al movimiento libre del personaje, esto ahorra tiempos y permitirá al equipo lograr un producto mínimo viable en el tiempo limitado que tenemos.

**Mecánicas de reglas específicas.** Se descartaron ciertos tipos de reglas (por ejemplo dar la vuelta o voltear hacia el lado contrario) al encontrarse con una anomalía de alto nível
