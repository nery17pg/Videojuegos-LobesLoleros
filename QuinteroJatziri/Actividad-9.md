# Actividad 9: diseño UI + Riesgos

## Concepto de UI (HUD, canales de información y feedback)

En mi juego la interfaz no debe romper la atmósfera. Por eso decidí que el HUD sea mínimo y principalmente diegético.
Cuando digo diegético, me refiero a que la información forma parte del mundo del juego. Es decir, no son elementos artificiales flotando en pantalla, sino señales que existen dentro del entorno y que el personaje también podría percibir.

### HUD

El HUD es intencionalmente reducido. No quiero saturar la pantalla porque eso eliminaría la sensación de vulnerabilidad.

- La batería no se muestra con porcentaje exacto, sino con el parpadeo progresivo de la linterna.
- La cercanía de un fantasma no aparece como barra roja, sino como distorsiones visuales y cambios en el sonido.
- No hay minimapa permanente; el jugador debe orientarse por el espacio.

### Canales de información

**Visual**
- Oscuridad como mecánica real.
- Sombras y movimientos sutiles.
- Distorsión leve cuando la amenaza está cerca.

**Sonoro**
- Pasos lejanos.
- Susurros.
- Cambios en la música según el nivel de peligro.
- Diferencias acústicas según la zona del hospital.

**Espacial**
- Diseño de pasillos que generan desorientación.
- Puertas cerradas que guían progresión.
- Zonas más abiertas que funcionan como respiro temporal.

### Feedback

El feedback no es explícito, sino reactivo y coherente:

- Si hago ruido, los fantasmas reaccionan.
- Si uso mucho la linterna, me quedo sin batería.
- Si tardo demasiado resolviendo un acertijo, aumenta el riesgo.
- Si me escondo bien, la persecución disminuye gradualmente.

No explico todo con tutoriales largos; el jugador aprende observando consecuencias del sistema.

---

## Loop principal de interacción

1. Explorar
2. Encontrar pista
3. Resolver acertijo
4. Aumenta tensión
5. Aparece amenaza
6. Huir o esconderse 
7. Desbloquear zona
8. Repetir

Este loop está basado en mis tres verbos centrales:

- Explorar  
- Resolver  
- Huir  

Cada repetición aumenta la presión. Al desbloquear nuevas áreas, la dificultad escala: acertijos más complejos, menos margen de error y fantasmas más agresivos.

El jugador siempre tiene un objetivo claro: avanzar hacia la salida del hospital.

---

## Dinámicas asociadas y cómo la UI las regula

### Gestión de batería

- Barra mínima sin números exactos.
- Parpadeo cuando está baja.
- Oscuridad como castigo directo.

La falta de información exacta genera incertidumbre y obliga a administrar la batería con cuidado.

### Sigilo y ruido

- No hay medidor visible tradicional.
- El feedback se da por sonido y comportamiento enemigo.
- Correr incrementa riesgo inmediato.

La UI regula el comportamiento sin mostrar datos explícitos.

### Resolución bajo presión

- El mundo no se pausa al resolver acertijos.
- El sonido puede alertar de peligro mientras pienso.
- Puede haber distorsiones visuales si la amenaza está cerca.

---

## Principal riesgo del diseño (técnico o de experiencia)

El mayor riesgo es de experiencia: exceso de frustración por presión constante

Si el jugador siente que:
- Nunca tiene suficiente batería.
- Los fantasmas aparecen de forma injusta.
- No puede concentrarse en los acertijos.

La tensión deja de ser interesante y se convierte en molestia.

Para validarlo, haría un prototipo pequeño (vertical slice) con:
- Un pasillo funcional
- Un acertijo simple
- Un fantasma con IA básica
- Sistema real de batería

Mediría:
- Tiempo promedio de resolución
- Número de muertes
- Punto donde abandonan
- Nivel de estrés percibido

Si la mayoría falla antes de comprender el sistema, significa que el balance está mal ajustado.

---

## Un trade-off explícito

Inmersión vs. claridad de información

Si agrego más indicadores (mapa, porcentaje exacto de batería, medidor visible de ruido), el jugador entendería mejor el sistema.

Pero perdería:
- Vulnerabilidad.
- Incertidumbre.
- Tensión psicológica.

Decidí priorizar inmersión, compensando con reglas coherentes y consistentes.

---

## Justificación de decisiones

Todas mis decisiones están alineadas con el perfil del jugador que definí:

- Disfruta la tensión psicológica.
- Le gusta pensar bajo presión.
- Quiere riesgo, pero riesgo justo.

No hay combate porque quiero vulnerabilidad real.
No hay mapa permanente porque quiero desorientación controlada.
No hay pausa en acertijos porque la amenaza debe sentirse constante.

La estructura permite controlar el ritmo y escalar dificultad de forma progresiva. Cada área del hospital aumenta complejidad y presión de manera lógica.

El objetivo es que el jugador sienta que mejora, pero que el entorno también se vuelve más hostil. Ese equilibrio mantiene el interés y evita tanto el aburrimiento como la frustración excesiva.
