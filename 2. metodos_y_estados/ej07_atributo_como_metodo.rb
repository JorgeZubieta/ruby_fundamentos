# Antes te mostramos que si enviamos el mensaje energia, fallará:
Pepita.energia
# undefined method `energia' for Pepita:Module (NoMethodError)

# El motivo es simple: los atributos NO son mensajes.
# Entonces, ¿cómo podríamos consultar la energía de Pepita? Definiendo un método, ¡por supuesto!

module Pepita

    #...atributos y métodos anteriores…

	def energia
        @energia
    end
end

# Ya agregamos el método energia por vos. Probá en la consola ahora las siguientes consultas:

Pepita.energia
100

Pepita.energia = 120
# undefined method `energia=' for Pepita:Module (NoMethodError)
# Did you mean? energia

energia
# undefined local variable or method `energia' for main:Object (NameError)


# ¿Todas las consultas funcionan? ¿Por qué?
# NO TODAS