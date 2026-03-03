# Diseño de Interacción y UI

## 1. Concepto de UI

### Enfoque
Interfaz clara y competitiva.  
Solo se muestra información estratégica inmediata.  
Sin elementos decorativos.

### HUD

#### Superior
- Vida propia y enemiga
- Estado de torretas y nexo
- Temporizador de partida

#### Inferior
- Habilidades con enfriamiento
- Oro actual
- 3 espacios de objetos

#### En pantalla
- Indicadores de daño
- Confirmación de oro al eliminar minions
- Avisos de ataque a estructuras
- Temporizador de respawn

### Canales de información
- **Visual:** barras de vida, efectos, presión en línea  
- **Numérico:** oro, tiempo, respawn  
- **Sonoro:** alertas de daño, estructuras y eliminación de minions  

El sistema responde inmediatamente a cada acción para mantener tensión y claridad.

---

## 2. Loop Principal de Interacción

- Eliminar minions → obtener oro  
- Evaluar riesgo → presionar o retroceder  
- Comprar hasta 3 objetos  
- Buscar ventaja sobre el rival  
- Dañar estructuras  

Este ciclo se repite hasta destruir el nexo enemigo.

---

## 3. Dinámicas y Regulación desde la UI

- **Presión:** vida de estructuras y control de línea visibles en todo momento.  
- **Gestión del tiempo:** enfriamientos y respawn claros.  
- **Decisión estratégica:** límite de 3 objetos obliga a definir estilo de juego.  

La UI reduce incertidumbre y favorece decisiones rápidas.

---

## 4. Principal Riesgo del Diseño

**Riesgo:** snowball excesivo; que una muerte temprana determine la partida.

### Validación con prototipo
Probar versión mínima:
- 1 habilidad
- Minions automáticos
- 1 torreta por lado

Medir:
- Tiempo hasta ventaja irreversible
- Posibilidad real de comeback
- Percepción del jugador tras morir temprano

---

## 5. Trade-off

### Límite de 3 objetos

**Se gana:**
- Claridad
- Ritmo rápido
- Accesibilidad

**Se pierde:**
- Profundidad
- Variedad de builds

Es una decisión intencional para mantener partidas cortas e intensas.

---

## 6. Justificación

El diseño concentra el conflicto en un espacio reducido, prioriza decisiones rápidas y mantiene un ritmo continuo.  

No busca replicar un MOBA completo, sino ofrecer un duelo estratégico breve, claro y competitivo.
