# **Actividad 9: Documento de diseño UI + Riesgos**

## **Concepto de UI**

La interfaz será minimalista e inmersiva, priorizando la sensación de aislamiento en un entorno espacial oscuro.

#### **HUD principal:**

* Barra de vida
* Barra de energía
* Inventario rápido (4 a 6 espacios)
* Herramienta equipada
* Objetivo actual del nivel

#### **Canales de información:**

* Visual: iluminación dinámica, efectos de daño y resaltado de recursos cercanos.
* Sonoro: advertencias de peligro, sonidos ambientales y confirmaciones al recolectar o construir.
* Feedback sistémico: mensajes breves al completar objetivos o desbloquear herramientas.

La UI regula la tensión: mínima durante exploración y más visible durante combate.

## **Loop principal de interacción**

*Explorar → Recolectar recursos → Construir herramienta → Superar desafío → Desbloquear zona → Repetir*

El jugador interactúa mediante movimiento libre, botón contextual de acción, sistema simple de crafteo y combate básico.

El objetivo siempre está visible para mantener dirección clara.

## **Dinámicas asociadas y cómo la UI las regula**

* Exploración: poca información en pantalla para favorecer curiosidad.
* Construcción: recetas desbloqueadas progresivamente; solo se muestran las posibles según recursos disponibles.
* Combate: indicadores de amenaza y barra de vida visible únicamente en enfrentamientos.

La interfaz equilibra inmersión y claridad.

## **Principal riesgo del diseño**

El mayor riesgo es la falta de diferenciación y profundidad, ya que puede percibirse similar a Minecraft si la exploración no ofrece eventos significativos.

**También existe riesgo técnico en:**

* Sistema de crafteo funcional.
* IA básica de criaturas.
* Construcción de atmósfera convincente.

### **Validación con prototipo**

Se desarrollaría un vertical slice en greybox con:

* 1 zona pequeña
* 3 recursos
* 1 herramienta construible
* 1 criatura básica
* 1 objetivo claro

**Se evaluaría:**

* Comprensión del loop en los primeros 10–15 minutos.
* Claridad del sistema de construcción.
* Nivel de tensión en combate.

Si el jugador no entiende qué hacer sin tutorial extenso, el diseño debe simplificarse.

## **Trade-off explícito**

**Inmersión vs Claridad de información**

Se prioriza la inmersión con HUD reducido, manteniendo siempre visible el objetivo actual para evitar desorientación.

## **Justificación de decisiones**

* UI minimalista: Refuerza inmersión y sensación de aislamiento.
* Objetivo visible: Mantiene claridad y evita desorientación.
* Loop simple: Facilita comprensión rápida y progresión constante.
* Zonas cerradas: Reduce riesgo técnico y hace viable el proyecto.
* Crafteo limitado: Controla complejidad y mejora curva de aprendizaje.
* Prototipo temprano: Permite validar experiencia antes de escalar desarrollo.

## **¿Es viable?**

El proyecto es viable si se limita el alcance (pocas herramientas, criaturas y zonas cerradas) y se valida temprano el loop principal.

Sin embargo, tomando en cuenta el tiempo de desarrollo, creo que no es la mejor opción para desarrollar, ya que preferiría desarrollar un videojuego móvil y sencillo, donde no se requiera una curva de aprendizaje pronunciada, además que me sea atractivo a mí, por ejemplo, algo simple donde no requiere pensar demasiado.

Por ello, planeo buscar una opción más sencilla que esta.



