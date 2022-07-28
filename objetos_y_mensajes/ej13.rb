# Veamos si queda claro, siendo que las interfaces de Norita, Pepita y Mercedesson las siguientes:
# Esto significa que comparten algunos mensajes y otros no. ¿Qué interfaces comparten entre ellas?

# ¿Qué interfaz comparten Mercedes y Norita?
interfaz_compartida_entre_mercedes_y_norita = %w(
    cantar!
)

# ¿Qué interfaz comparten Pepita y Norita?
interfaz_compartida_entre_pepita_y_norita = %w(
    cantar!
    comer_lombriz!
    volar_en_circulos!
)

# ¿Qué interfaz comparten Mercedes, Norita y Pepita?
interfaz_compartida_entre_todas = %w(
    cantar!
)

# Recordá que la interfaz es el conjunto de mensajes que un objeto entiende. Por lo tanto, si queremos ver cual interfaz comparten dos objetos, tenemos que pensar en la intersección entre los conjuntos de mensajes de cada uno (es decir, aquellos que son iguales).