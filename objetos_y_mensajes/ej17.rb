# Escribir un programa que haga que Pepita:
# 	1. Coma 90 gramos de alpiste.
# 	2. Vuele a Iruya.
# 	3. Finalmente, coma tanto alpiste como el 10% de la energía que le haya quedado.
# Este programa tiene que andar sin importar con cuanta energía arranque Pepita.

# ¡Dame una pista!
# Cualquier envío de mensajes que devuelva algo es una expresión válida, y puede ser usada en cualquier lugar en que se espera un objeto. Por ejemplo, las siguientes colaboraciones son válidas:
Fitito.cargar_nafta!(120 * 4)
Fitito.cargar_nafta!(Fitito.capacidad_tanque_nafta - Fitito.nafta_disponible) #Carga al Fitito lo necesario para completar su tanque. Para ello le pregunta al Fitito su capacidad y la nafta que tiene en este momento. 

# • Solución	
Pepita.comer_alpiste! 90
# 2
Pepita.volar_hacia! Iruya
# 3
Pepita.comer_alpiste! (Pepita.energia*10)/100 