**ACTIVIDAD.**
---

***Concepto de UI (HUD, canales de información y feedback)***

La interfaz busca reforzar la inmersión y la vulnerabilidad del jugador. No debe romper la fantasía de trabajador nocturno.

***HUD (Minimalista y contextual)***

El HUD incluye únicamente:

•	Reloj digital (hora actual del turno).
•	Indicador de batería de linterna.
•	Icono de radio activa/inactiva.
•	Acceso rápido a reglas (botón para revisar manual).
•	Zona actual patrullada.
•	Indicador fuerte de anomalía detectada (interferencia visual alta).

Esto mantiene la tensión al limitar información explícita.

***Canales de información***

El jugador recibe información mediante:

1.	Visual
Cambios en el entorno, sombras, movimiento de estatuas.

3.	Auditivo
Susurros, pasos, interferencias en radio.

5.	Textual contextual
Reglas escritas en un cuaderno accesible.

7.	Feedback ambiental
Parpadeo de luces, niebla densa, distorsión visual.

La UI no “explica”, sino que sugiere. El jugador interpreta.

***Feedback***

•	Error leve → distorsión visual momentánea.

•	Error grave → aparición hostil.

•	Correcta aplicación de regla → estabilización del entorno.

•	Fin de hora → campanada lejana.

La retroalimentación es indirecta para reforzar incertidumbre.

***Loop principal de interacción***

El ciclo base del jugador es:

1.	Recibir estado actual (hora + entorno).
   
2.	Patrullar zona asignada.
   
3.	Detectar anomalía.
   
4.	Recordar regla asociada.
   
5.	Tomar decisión.
   
6.	Recibir consecuencia.
   
7.	Avanzar el tiempo.
   
Este loop se repite durante las 8 horas del turno.

***Dinámicas asociadas y cómo la UI las regula***

Dinámica: Paranoia

•	No saber exactamente cuál es la anomalía que le saldrá. 
•	No saber si alguna regla se le está pasando.

Dinámica: Vigilancia constante

•	Sonidos direccionales obligan a usar audífonos.
•	No hay minimapa permanente → obliga a memorizar el espacio.

Dinámica: Duda antes de actuar

•	La UI no confirma inmediatamente si la decisión fue correcta.
•	El feedback es retardado.

Dinámica: Aprendizaje por error

•	El cuaderno de reglas está siempre accesible.
•	Algunas reglas cambian por nivel.

La UI regula las dinámicas limitando información, no ampliándola.

***Principal riesgo del diseño***

Riesgo principal: Frustración por reglas poco claras

El sistema se basa en memorización y cumplimiento de reglas.

Si el jugador percibe que:
•	Las reglas son ambiguas.
•	El castigo es injusto.
•	No entiende por qué perdió.

El juego se percibirá arbitrario y no aterrador.
El mayor riesgo es romper la sensación de justicia sistémica.

***Validación mediante prototipo***

Se validaría con un vertical slice funcional que incluya:

•	Un solo cementerio pequeño.
•	10 reglas claras.
•	8 tipos de anomalías.
•	Duración de turno reducida (10 minutos).

***Pruebas de usuario:***

•	¿Entienden las reglas?
•	¿Relacionan error con consecuencia?
•	¿Sienten miedo o frustración?
•	¿Intentan mejorar en el siguiente intento?

Si los jugadores dicen:
“Perdí pero entiendo por qué”, el sistema funciona.
Si dicen:
“Perdí y no sé qué hice mal”, el diseño necesita ajustes.

***Trade-off explícito***

**Inmersión vs Claridad**

Decisión:
Eliminar indicadores tradicionales de estado (minimapa, alertas claras).

Ventaja:
Mayor tensión e inmersión.

Desventaja:
Mayor riesgo de confusión.

Se elige inmersión como prioridad, pero se equilibra con:
•	Reglas siempre accesibles.
•	Feedback coherente.
•	Progresión gradual de dificultad.

***Justificación de decisiones***

El diseño prioriza coherencia sistémica:

•	La UI es limitada porque el personaje es solo un velador, no un soldado.
•	No hay HUD recargado porque rompería la fantasía.
•	La información incompleta genera miedo psicológico.
•	El loop repetitivo refuerza la rutina laboral distorsionada.

Cada elemento responde a la premisa central:
-	El miedo surge de cumplir reglas en un entorno que parece normal, pero no lo es.

