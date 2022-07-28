# Ya vimos que un objeto puede entender múltiples mensajes, y esos mensajes conforman su interfaz.
# ¿Pero podría haber más de un objeto que entienda los mismos mensajes?
# A Pepita ya la conocemos bien: canta, come, etc. Su amiga Norita, por otro lado, no aprendió nunca a decirnos su energía. Y Mercedes es una reconocida cantora.
# Usando la consola, averiguá cuál es la interfaz de cada una de ellas, y completá el listado de mensajes que cada una entiende en el editor.

interfaz_pepita = %w(
    energia
    cantar!
    comer_lombriz!
    volar_en_circulos!
)

interfaz_norita = %w(
    cantar!
    comer_lombriz!
    volar_en_circulos!
)

interfaz_mercedes = %w(
    cantar!
)

# ¡Así es! Puede haber más de un objeto que entienda el mismo mensaje. Notá que sin embargo no todos los objetos están obligados a reaccionar de igual forma ante el mismo mensaje:

Pepita.cantar!
=> "pri pri pri"
Norita.cantar!
=> "priiiip priiiip"
Mercedes.cantar!
=> "♪ una voz antigua de viento y de sal ♫"

# Esto significa que dos o más objetos pueden entender un mismo mensaje, pero pueden comportarse de formas diferentes. Ya hablaremos más de esto en próximas lecciones.