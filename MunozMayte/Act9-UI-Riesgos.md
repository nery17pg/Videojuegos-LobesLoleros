# Concepto de UI 
### HUD
La HUD es mínima y no es invasiva, en pantalla solo aparecerán indicadores básicos de interacción y alertas cuando existe riesgo de ser descubierto. De esta manera el jugador estará enfocado en el comportamiento de los personajes en lugar de depender de información constante en pantalla
### Canales de información 
El principal canal de información es el celular del personaje. Está compuesta por varias secciones con distinta información relevante: 
- Cámara: Permite registrar pistas físicas
- Bloc de notas: Aquí se lleva un registro de todas las pistas encontradas, se adjuntan las imagénes tomadas con su debida descripción
- Contactos: Se muestra el perfil de cada personaje, muestra información relevante que haya sido descubierta por el jugador como su nombre, edad, puesto, rasgos de personalidad, aficiones, etc. Por supuesto, también se muestra el nivel de confianza actual con el jugador.
- Mapa electrónico: Se trata de un mapa tradicional, el jugador deberá visitar por primera vez un lugar restringido para que este se muestre en su mapa.
- Aplicación de mensajería: El jugador puede contactar a un personaje, ya sea para interrogarlo o simplemente aumentar su nivel de confianza
- Aplicación de compras: El jugador puede comprar en línea obsequios para los personajes, puede ver su saldo desde esta misma sección.
### Feedback
Se comunica más que nada a través de mundo y de los personajes. Cambios en la forma de hablar, actitudes más cerradas o abiertas, diálogos interrumpidos y variaciones en la música indican cuando las acciones del jugador traen consecuencias. La barra de confianza en la aplicación de contactos es solo una segunda confirmación de lo que el jugador ya percibió durante la interacción.

# Loop principal de interacción
El loop principal se basa en explorar, interpretar, decidir y enfrentar consecuencias. El jugador recorre e investiga el mapa o conversa con personajes, analiza la información obtenida y toma decisiones que afecten el desarrollo de la semana. Si actua de forma imprudente la semana se reinicia, el conocimiento se conserva, pero si se encontraba en medio de una investigación valiosa o difícil deberá volver a empezar desde el inicio.

# Dinámicas asociadas y cómo la UI las regula
La dinámica de **confianza** se regula mediante una barra en la sección de contactos del celular, sin embargo, esta no se muestra durante los dialogos, lo que obliga al jugador a interpretar primero el comportamiento del personaje y, si lo desea, confirmar el estado de la relación.

Los **rasgos de personalidad** se desbloquean de forma progresiva y están fuertemente ligados al sistema de confianza. Cada personaje tiene un máximo de 2 rasgos. El primero se revela al alcanzar 25% de confianza y el segundo al llegar al 50%. Como alternativa, el jugador puede preguntar a otros personajes. Para que la información sea válida, el personaje consultado debe ser cercano al objetivo y el jugador debe tener al menos 40% de confianza con él. La UI muestra los rasgos desbloqueados únicamente en el celular, dentro de la sección de contactos, antes de eso permacen ocutos (censurados).

La dinámica de **riesgo** se controla con señales visuaes y sonoras. La UI alerta cuando el jugador se acerca a una situación peligrosa al oscurecer la pantalla un poco y reproducir sonidos de latidos.


# Principal riesgo del diseño (técnico o de experiencia)
El principal riesgo es la complejidad del sistema de confianza, se trata del corazón del juego que se conecta con todos los demás sistemas, reducir su complejidad cambiaría por completo la idea, a demás de que es prácticamente imposible de desarrollar en tan poco tiempo.

La escalabilidad de los diálogos es otro riesgo importante, al tratarse de un juego narrativo no es opción quedarse cortos justamente en la parte central que es la historia, el sistema de confianza demanda que los diálogos cambien dependiendo el porcentaje de confianza; es decir, llegará un momento en el que hayan tantos diálogos que por error humano se provocarán repeticiones, contradicciones no intencionales o bloqueos de progreso en general


# Trade-off
El diseño sacrifica claridad a cambio de inmersión y tensión. Si bien la barra de confianza es una clara referencia, el que se encuentre exclusivamente dentro del celular evita que el sistema se vuelve demasiado "transparence", dándole un mayor peso a la observación y juicio del jugador.

# Justificación
Las decisiones de interfaz buscan un equilibrio entre claridad y experiencia. Es decir, que el jugador entienda el sistema sin que este le quite protagonismo a la investigación. La barra de confianza sirve para evitar frustraciones y dar una referencia clara del progreso social, pero al estar dentro del celular no interrumple la explicación ni condiciona decisiones del momento.
