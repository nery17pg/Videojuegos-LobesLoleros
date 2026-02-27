# Nombre del juego
## 1. High Concept
Un thriller psicológico en primera persona donde el jugador trabaja como vigilante nocturno en un cementerio que obedece reglas inexplicables. Cada noche debe patrullar, detectar anomalías y decidir bajo presión si intervenir o no. Romper una regla implica consecuencias inmediatas.
Es una experiencia centrada en tensión cognitiva y obediencia bajo amenaza invisible.

---
## 2. Experiencia central
- Ansiedad sostenida  
- Paranoia ambiental  
- Duda constante entre actuar o contenerse  
- Satisfacción por dominio progresivo del sistema  

El miedo no proviene de persecuciones constantes, sino de la responsabilidad. El error siempre es del jugador.

---
## 3. Perfil de jugador
Jugador intermedio orientado a desafío cognitivo y tensión psicológica.

**Motivaciones principales:**
- Curiosidad (descubrir patrones y reglas)  
- Supervivencia bajo presión  
- Dominio progresivo del sistema

---
## 4. Core Loop
1. Patrullar
2. Detectar anomalías
3. Recordar reglas
4. Tomar decisión
5. Sobrevivir o fallar
   
---   
## 5. Mecánicas principales

### Exploración del entorno
- El jugador debe recorrer el cementerio durante su turno nocturno para inspeccionar distintas áreas asignadas.

### Toma de decisiones bajo presión
- Ante cada evento, el jugador decide cómo reaccionar: ignorar, escapar, permanecer inmóvil y reportar la anomalía.

### Gestión del tiempo
- El turno dura 8 horas dentro del juego.

### Uso de herramientas del velador.
- El jugador cuenta con recursos limitados.

### Progresión por niveles
- Al completar una noche se desbloquean nuevos cementarios.

### Sistema de anomalías
- Visuales (tumbas abiertas, estatuas movidas).

### Consecuencia inmediata
- Si rompes una regla ocurre un evento fatal.
---
## 6. Dinámicas esperadas
Las dinámicas emergen de la combinación entre patrullaje constante, reglas estrictas y consecuencias inmediatas ante el error. No agregan nuevas mecánicas, sino que describen los comportamientos y tensiones que aparecen durante la partida.

- **Vigilancia activa permanente**  
  El jugador no recorre el espacio de manera pasiva. Cada desplazamiento implica observar detalles, comparar con la memoria y verificar que nada haya cambiado. El simple acto de caminar se transforma en un proceso de inspección constante.

- **Pausa cognitiva antes de decidir**  
  Ante cualquier anomalía, el jugador detiene su impulso inicial y evalúa mentalmente: ¿esta situación tiene una regla asociada?, ¿intervenir o ignorar? Esta micro-pausa se repite durante toda la noche y genera un ritmo interno de tensión sostenida.

- **Autocontrol frente a la curiosidad**  
  Muchos eventos están diseñados para provocar interés (figuras a lo lejos, sonidos, cambios sutiles). La dinámica dominante no es investigar, sino resistir el impulso de hacerlo cuando la regla lo prohíbe.

- **Aprendizaje progresivo del sistema**  
  Mediante repetición y error, el jugador comienza a reconocer patrones, anticipar riesgos y optimizar sus recorridos. La experiencia evoluciona de incertidumbre total a control parcial del entorno.

- **Incremento de carga mental**  
  Con más reglas activas y eventos simultáneos, el jugador debe dividir su atención entre memoria, espacio y tiempo. La dificultad aumenta por complejidad cognitiva, no por velocidad de reflejos.

- **Sensación de falsa seguridad**  
  Los momentos de calma reducen temporalmente la tensión, pero también bajan la guardia del jugador. Esto amplifica el impacto de anomalías posteriores.

- **Interiorización del espacio**  
  Al no contar con ayudas externas como minimapa, el jugador desarrolla memoria espacial del cementerio, optimizando rutas y reconociendo más rápido cambios sutiles.

## 7. Mundo y conflicto
### Mundo
Cada nivel es un cementerio cerrado con:
- Caseta de vigilancia (zona segura limitada)  
- Mausoleos  
- Senderos principales  
- Rejas perimetrales  
- Capillas  
- Zonas oscuras  
### Conflicto mecánico central
Se basa en la tensión entre actuar e inhibirse. Ante cada situación rara que se presente en la partida, el jugador debe decidir entre intervenir siguiendo su intuición o seguir las reglas que ya se establecieron. 
El videojuego no castiga la falta de habilidad, sino la mala interpretación del sistema, lo que genera consecuencias inmediatas.

---
## 8. Interfaz conceptual
La interfaz se planea que no esté saturada de elementos, ya que se busca reducir la tensión cognitiva y de no ofrecer ayudas externas que simplifiquen la toma de decisiones. 
La información disponible para el jugador será limitada y contextuañ. Las reglas estarán accesibles mediante un cuaderno o el celular dentro del juego, reforzando la necesidad de memoria activa. Las anomalías no tendrán explicaciones en pantalla.
Se busca que la dificultad venga de la interpretación y aplicación correcta de las reglas, no se indicadores visuales.

- **Indicador de vida**: El jugador cuenta con vidas finitas, tras cometer cierta cantidad de errores se terminará la partida automaticamente. Para indicar el estado de salud del jugador, se aplicará un efecto de blur en los bordes de la pantalla. A mayor intensidad de desenfoque en los bordes, menor el estado de salud del jugador. Este efecto solo durará un aproximado de 5 segundos antes de eliminarse el filtro para no interferir en el campo de visión del jugador, sin embargo deberá estar atento a este efecto para determinar cuántas oportunidades más tiene de fallar.
- **Cuaderno**: El cuaderno contiene las reglas para evitar cometer errores, podrá ser consultado solamente en la caseta de vigilancia.
- **Error**: Cuando el jugador cometa un error, será notificado mediante un susto
- **Tiempo**: El tiempo es fundamental en el juego, pues sobrevivir 8 horas se traduce en ganar la partida. El jugador podrá consultar el tiempo desde un reloj de pared en la caseta de seguridad, al igual que después de superar cierta cantidad de tiempo sonará una campana antigua
- **Reportes**: Funciona como el principal medio de intervención del jugador para atender anomalías. Cuando se detecta una anomalia el jugador puede generar un reporte desde un punto específico del entorno, reistrando lo observado sin interactuar fisicamente con el fenómeno. Si el reporte es correcto la anomalía se dispersa, sino se activa una consecuencia negativa y reduce los puntos de vida del jugador

## 9. MVP
La versión mínima funcional tiene como objetivo validar si la mecánica principal genera tensión y aprendizaje sin desarrollar el juego completo.
Incluye:
- Un nivel jugable básico
- Sitema de reglas
- Número de anomalías reducido
- Opciones limitadas de intervención acordes al pequeño número de anomalías disponibles
- Consecuencias inmediatas al romper una regla

## 10. Riesgos y trade-offs
### Riesgos
**Repetitividad:**  
El loop puede volverse predecible si no hay suficiente variabilidad.

**Frustración excesiva:**  
El castigo inmediato puede provocar abandono si el aprendizaje no es claro.

**Sobrecarga cognitiva:**  
Demasiadas reglas simultáneas pueden saturar al jugador.

**Percepción de injusticia:**  
Si las reglas no son claras, la experiencia se percibe arbitraria.

