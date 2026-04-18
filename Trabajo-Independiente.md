# Trabajo Independiente

---

## MDA explícito

***1. Mecánicas.***

- Exploración del cementerio en primera persona.

- Sistema de reglas obligatorias de supervivencia.

- Aparición aleatoria de anomalías paranormales.

- Patrullaje por zonas asignadas.

- Gestión del tiempo (turno nocturno de 8 horas).

- Uso limitado de herramientas (linterna, radio, monitoreo).

- Sistema de consecuencias por incumplimiento de reglas.

- Progresión por niveles mediante nuevos cementerios.

- Eventos dinámicos que cambian el entorno.

Estas mecánicas establecen qué puede y qué no puede hacer el jugador.

***2. Dinámicas.***

- Vigilancia constante del entorno.

- Duda antes de actuar.

- Aprendizaje mediante prueba y error.

- Conducta cautelosa y lenta.

- Paranoia al interpretar estímulos visuales o auditivos.

- Priorización entre curiosidad y supervivencia.

- Incremento progresivo del estrés conforme avanza la noche.

El jugador desarrolla comportamientos defensivos y estratégicos debido al riesgo permanente.

***3. Estéticas.***

- Terror psicológico → miedo generado por anticipación.

- Tensión constante → sensación de peligro permanente.

- Vulnerabilidad → ausencia de combate directo.

- Ansiedad → posibilidad de cometer errores.

- Incertidumbre → reglas parcialmente comprendidas.

- Alivio → al sobrevivir hasta el amanecer.

- Inmersión narrativa → sentirse realmente un velador nocturno.

La emoción dominante es el miedo basado en responsabilidad y error humano.

***Relación explícita entre MDA**

El diseño sigue la siguiente cadena causal:

Mecánicas.
(Reglas estrictas + anomalías + tiempo limitado)

generan:

Dinámicas.
(Precaución, paranoia, observación constante)

producen:

Estéticas.
(Miedo psicológico, tensión e inmersión)

***Coherencia del modelo***

El terror no proviene de enemigos directos, sino del cumplimiento correcto de reglas.
Esto asegura coherencia entre sistema y experiencia:

- Las mecánicas obligan a observar.

- La observación genera duda.

- La duda produce miedo.

De esta manera, todos los elementos del diseño trabajan para reforzar la fantasía central del juego: sobrevivir a un trabajo aparentemente normal que oculta reglas sobrenaturales.

---

## Perfil detallado
- **Nivel de experiencia:** Intermedio. Ya domina controles estándar en primera persona y comprende sistemas de reglas en videojuegos.  
- **Edad estimada:** 18–30 años.  
- **Preferencia de género:** Terror psicológico, thriller narrativo, experiencias inmersivas de baja acción y alta tensión mental.  

### Tipo de jugador 
Prefiere juegos donde el reto principal es mental y estratégico.
No busca acción constante, sino interpretar patrones y dominar reglas ocultas.

### Motivaciones
- **Curiosidad:** Desea comprender el sistema interno del juego, descubrir patrones y anticipar consecuencias.  
- **Supervivencia bajo presión:** Disfruta la tensión derivada del riesgo latente.  
- **Dominio progresivo:** Encuentra satisfacción en pasar de la confusión inicial al control parcial del entorno.  
- **Automejora:** Tolera el error si percibe aprendizaje claro.

 ### Conducta durante la partido  
- Observa con detenimiento el entorno.  
- Memoriza rutas y reglas activas.  
- Se detiene antes de actuar; no responde impulsivamente.  
- Analiza consecuencias después de cada fallo.  
- Optimiza recorridos tras cada noche completada.

### Perfil cognitivo  
- **Alta tolerancia a la ambigüedad controlada.**  
- **Buena memoria de trabajo:** necesaria para recordar múltiples reglas activas.  
- **Capacidad de inhibición conductual:** Puede resistir el impulso de investigar cuando la regla lo prohíbe.  
- **Procesamiento analítico:** Interpreta anomalías como variables dentro de un sistema, no solo como estímulos de miedo.  

### Perfil emocional  
- Busca ansiedad sostenida, no sobresaltos constantes.  
- Disfruta la paranoia ambiental.  
- Valora la sensación de falsa seguridad seguida de ruptura de expectativa.  
- Acepta el castigo si percibe coherencia sistémica.
  
### Necesidades 
- Reglas claras pero no sobreexplicadas.  
- Consistencia entre causa y consecuencia.  
- Curva de complejidad progresiva.  
- Retroalimentación inmediata que indique que el error fue suyo y no del sistema.  

### Factores de abandono  
- Falta de claridad en reglas.  
- Eventos que parezcan injustificados.  
- Sobrecarga cognitiva.  
- Repetición sin nuevas variables.

---

## Justificación de decisiones
Las decisiones de diseño se fundamentan en el conflicto mecánico central: la tensión entre intervenir ante una anomalía y obedecer un sistema de reglas bajo incertidumbre.

Se optó por una interfaz minimalista sin ayudas externas (minimapa, indicadores de peligro o barra de vida) para asegurar que la dificultad provenga de la interpretación del sistema y la memoria activa del jugador, no de señales visuales correctivas.

El núcleo del gameplay se centra en el cumplimiento de reglas estrictas con consecuencias inmediatas ante el error. Esto refuerza la responsabilidad del jugador y sostiene la tensión psicológica constante, alineándose con la estética de terror basada en anticipación y error humano.

La progresión se construye mediante el incremento de complejidad cognitiva (más reglas, mayor ambigüedad y superposición de anomalías), en lugar de aumentar la velocidad o la acción. Esta decisión responde al perfil de jugador orientado a desafío sistémico y dominio progresivo.

En conjunto, todas las decisiones buscan coherencia entre mecánicas, dinámicas y estéticas, asegurando que el miedo emerja del sistema y no de estímulos externos directos.

---

## UI conceptual
La interfaz está pensada para ser clara y sencilla. No busca llenar la pantalla de información ni facilitar demasiado las decisiones del jugador. La idea es mantener la tensión y hacer que cada acción tenga peso.

No hay elementos visibles todo el tiempo como barras o mapas. La información debe buscarse dentro del propio entorno del juego. La dificultad no viene de reflejos rápidos, sino de recordar las reglas y aplicarlas correctamente.


### Estado del jugador

No existe una barra de vida permanente en pantalla.

Cuando el jugador comete un error, se muestran señales claras pero breves:

- Desenfoque en los bordes de la pantalla.
- Sonido alterado por unos segundos.
- Oscurecimiento ligero de la imagen.

Estos efectos duran poco tiempo y luego desaparecen para no afectar la visibilidad. El jugador debe prestar atención a estos cambios para saber cuántas oportunidades le quedan.


### Cuaderno de reglas

Las reglas están guardadas en un cuaderno dentro de la caseta de vigilancia.

- Solo puede consultarse desde ahí.
- El juego no se detiene completamente al leerlo.
- El jugador debe decidir cuándo es seguro regresar a revisar las reglas.

Esto refuerza la importancia de la memoria y la planificación.

### Sistema de reportes

El reporte es la principal forma de actuar frente a una anomalía.

- Solo puede hacerse desde ciertos puntos del entorno.
- El jugador registra lo que observa sin tocar directamente el fenómeno.
- Si el reporte es correcto, la anomalía desaparece.
- Si es incorrecto, ocurre una consecuencia negativa inmediata.

No hay ayudas que indiquen la respuesta correcta; todo depende de la atención del jugador.


### Tiempo

El turno va de 12 a.m. a 8 a.m. dentro del juego.

El jugador puede consultar la hora en un reloj de pared dentro de la caseta. No hay cronómetro visible en pantalla todo el tiempo. En ciertos momentos puede escucharse una campana que marca el paso de las horas.


### Sin ayudas externas

- No hay minimapa.
- No hay marcadores de objetivos.
- No hay explicaciones en pantalla cuando ocurre algo extraño.

El jugador debe observar, recordar y decidir por sí mismo.

---

## Progresión
El sistema de progresión se basa en **aprendizaje, memoria y dominio progresivo de las reglas**.

### Progresión lineal (por noches)
Al sobrevivir un turno completo de 8 horas, el jugador demuestra dominio en las reglas activas durante esa noche; completar una noche desbloquea:

* Nuevas reglas
* Nuevas anomalías
* Cambios ligeros en el entorno que alteran los patrones ya aprendidos

El progreso no se mide por puntaje, sino por supervivencia constante.

### Escalado de dificultad
La dificultad aumenta de manera cognitiva y **sistemática**:

* Aumento del número de reglas activas simultáneamente
* Anomalías menos evidentes
* Menor margen de tiempo para reaccionar a eventos específicos

### Progresión por aprendizaje

* El jugador recuerda las reglas sin necesidad del cuaderno
* Reconoce comportamientos normales
* Detecta anomalías sutiles

### Curva de progresión
La progresión mantiene al jugador tenso sin romper el ritmo:

* Noches iniciales: Aprendizaje, **reglas** claras, anomalías **fácilmente** detectables
* Noches intermedias: Combinación de **anomalías** simples y complejas, mayor presión
* Noches avanzadas: Ambigüedad, aparición de eventos poco frecuentes, anomalías **difíciles** de detectar

### Sensación de avance
El jugador sabe que progresa cuando comete menos errores, duda menos, reconoce más fácilmente y sobrevive noches que antes le costaban.



---

## Influencias
Nuestra idea toma influencias de múltiples juegos con el mismo mecanismo principal de detección de anomalías; los juegos más destacados que tomamos como referentes fueron:

- ***The Exit 8:*** Videojuego cuyo objetivo es atravesar un mismo pasadizo subterráneo detectando anomalías hasta alcanzar la “salida 8”. Las reglas son simples, si no encuentras anomalías, avanzas, y si encuentras una anomalía te das media vuelta y regresas. Si no se cumplen estas reglas, automáticamente se reinicia todo progreso y hay que empezar de nuevo. El juego no le da un margen de error al jugador y lo castiga reiniciando su progreso al cometer cualquier error. Otros juegos destacables con mecánicas iguales, pero diferentes escenarios, son: *The Last Stop* y *Shinkansen 0*.

- ***I'm on Observation Duty:*** Se basa en la detección de anomalías; sin embargo, no se permite que el jugador se mueva libremente en un espacio tridimensional como en los títulos mencionados anteriormente. En cambio, se tiene una vista fija a cierto número de escenarios, con un par de efectos especiales que simulan ser un video en tiempo real de cámaras de seguridad. El objetivo del jugador es controlar dichas cámaras y encontrar (reportar) anomalías en las diferentes zonas a vigilar. Dichas anomalías consisten en simples movimientos de objetos hasta la presencia de intrusos escalofriantes y seres sobrenaturales. Otros juegos destacables con mecánicas iguales o parecidas son: *Caught on Camera* y *Alternate Watch*.

- ***That's Not My Neighbor:*** El jugador toma el papel de portero de un edificio; tiene que comparar la información que tiene de los vecinos con la apariencia y palabras de la persona que intenta acceder al edificio. El jugador debe detectar anomalías y decidir si deja o no pasar a la persona (la cual podría ser un doppelganger). El usuario puede cometer errores y no se dará cuenta hasta el final de la partida; si hizo algo mal, su personaje no sobrevivirá al final del turno. Otros juegos destacables similares a este título son: *No, I'm Not a Human* y *Quarantine Zone: The Last Check*.
---
