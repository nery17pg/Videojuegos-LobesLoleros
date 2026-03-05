# Lobelito: Entre los Muertos
## 1. High Concept
## 2. Experiencia central
## 3. Perfil de jugador
El juego está pensado para las juventudes con pasión en el descubrimiento/exploración, que sean impulsados por la curiosidad y les interese las experiencias de supervivencia bajo presión. Según la taxonomía de Bartle, podríamos categorizar a nuestro jugador objetivo como del tipo “explorador”, siendo su mayor placer el explorar y aprender, lo cual encaja con el enfoque de nuestro juego basado en el dominio progresivo del sistema.

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
**Mundo**

El juego se desarrolla en un cementerio durante el turno nocturno del protagonista (10:00pm - 6:00pm), por lo tanto el entorno estará completamente oscuro la mayoría del tiempo a menos que el jugador utilice la linterna para aluzar un área limitada.

El cementerio idealmente contará con las siguientes zonas:
- Caseta de vigilancia (zona segura limitada)
- Sendero (se extenderá por todo el mapa para que el jugador pueda moverse)
- Capilla
- Lápidas antiguas
- Mausoleos
- Jardín de estatuas
- Campo de cruces de madera
- Árbol de las muñecas (con muñecas colgadas de sus ramas)

**Conflicto mecánico central**

Se basa en la tensión entre actuar e inhibirse. Ante cada situación rara que se presente en la partida, el jugador debe decidir entre intervenir siguiendo su intuición o seguir las reglas que ya se establecieron. El videojuego no castiga la falta de habilidad, sino la mala interpretación del sistema, lo que genera consecuencias inmediatas.

## 7. Interfaz conceptual
La interfaz se planea que no esté saturada de elementos, ya que se busca reducir la tensión cognitiva y de no ofrecer ayudas externas que simplifiquen la toma de decisiones. La información disponible para el jugador será limitada y contextual. Las reglas estarán accesibles mediante un cuaderno o el celular dentro del juego, reforzando la necesidad de memoria activa. Las anomalías no tendrán explicaciones en pantalla. Se busca que la dificultad venga de la interpretación y aplicación correcta de las reglas, no de indicadores visuales.

**Linterna:** El escenario estará a oscuras, por lo que la linterna será la herramienta escencial del jugador. Podrá encenderla o apagarla con un ícono en la parte inferior de la pantalla y controlará qué área aluzar con el mouse.

**Indicador de vida:** El jugador cuenta con vidas finitas, tras cometer cierta cantidad de errores se terminará la partida automáticamente. Para indicar el estado de salud del jugador, se aplicará un efecto de blur en los bordes de la pantalla. A mayor intensidad de desenfoque en los bordes, menor el estado de salud del jugador. Este efecto sólo durará un aproximado de 5 segundos antes de eliminarse el filtro para no interferir en el campo de visión del jugador, sin embargo deberá estar atento a este efecto para determinar cuántas oportunidades más tiene de fallar.

**Cuaderno:** El cuaderno contiene las reglas para evitar cometer errores, podrá ser consultado solamente en la caseta de vigilancia.

**Error:** Cuando el jugador cometa un error, será notificado mediante un susto
**Tiempo:** El tiempo es fundamental en el juego, pues sobrevivir 8 horas se traduce en ganar la partida. El jugador podrá consultar el tiempo desde un reloj de pared en la caseta de seguridad, al igual que después de superar cierta cantidad de tiempo sonará una campana antigua

**Reportes:** Funciona como el principal medio de intervención del jugador para atender anomalías. Cuando se detecta una anomalía el jugador puede generar un reporte desde un punto específico del entorno, registrando lo observado sin interactuar físicamente con el fenómeno. Si el reporte es correcto la anomalía se dispersa, sino se activa una consecuencia negativa y reduce los puntos de vida del jugador

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
 
**Mayor riesgo:** 
Que el sistema se perciba injusto o arbitrario. El mayor peligro no es la dificultad, sino que el jugador sienta que perdió sin entender por qué.

Este juego depende completamente de:
- Interpretación correcta de reglas.
- Coherencia entre anomalía y norma.
- Claridad en la relación causa–efecto.
- Si el jugador rompe una regla y no puede identificar exactamente qué hizo mal, la experiencia deja de ser tensión cognitiva y se convierte en frustración.

### Trade-offs:
**1. Simplicidad mecánica vs. variedad de gameplay**
Decisión: Core loop simple.

Ganancia:
- Fácil de entender.
- Permite enfocarse en la tensión psicológica.

Costo:
- Puede volverse repetitivo si las anomalías no cambian lo suficiente.

**2. Información limitada vs. claridad del sistema**

Decisión: Interfaz mínima y sin ayudas extras.

Ganancia:
- Mayor inmersión.
- Incrementa la paranoia ambiental.

Costo:
- Los jugadores pueden sentirse perdidos.
- Mayor riesgo de percibir el sistema como injusto.

**3. Castigo inmediato vs. accesibilidad**

Decisión: Romper alguna de las reglas desencadena consecuencias inmediatas.

Ganancia: 
- Incrementa la tensión y el miedo psicológico.
- Refuerza la importancia de las reglas y recordarlas.

Costo:
- Frustración en los jugadores primerizos.
- Abandono del videojuego.

**4. Aprendizaje por error vs. sensación de justicia**

Decisión: El jugador aprende rompiendo las reglas.

Ganancia: 
- Genera dominio progresivo del sistema.
- Hace que cada decisión tenga peso.

Costo:
- Si la relación causa-efecto no es clara, se percibe como arbitrario.
## 10. Lo que eliminamos
**Múltiples escenarios (cementerios).** El equipo tomó esta decisión debido a la falta de tiempo para poder diseñar e implementar escenarios radicalmente diferentes unos entre otros.

**Entorno 3D.** La concepción inicial del juego contemplaba una exploración de un entorno tridimensional, sin embargo, modelar todos los escenarios y anomalías tomaría demasiado tiempo, lo cual lo hizo inviable y preferimos un entorno 2D; si bien se sacrifica inmersión ya que algunas mecánicas descartadas estaban relacionadas al movimiento libre del personaje, esto ahorra tiempos y permitirá al equipo lograr un producto mínimo viable en el tiempo limitado que tenemos.

**Mecánicas de reglas específicas.** Se descartaron ciertos tipos de reglas (por ejemplo dar la vuelta o voltear hacia el lado contrario) al encontrarse con una anomalía de alto nível
