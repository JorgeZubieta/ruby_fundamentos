# Los objetos pueden tener múltiples atributos y al conjunto de estos atributos se lo denomina estado. Por ejemplo, si miramos a Pepita:
module Pepita
    @energia = 100
    @ciudad = Obera
    #...etc...
end

# El estado es siempre privado, es decir, solo el objeto puede utilizar sus atributos, lo que explica por qué las siguiente consultas que hicimos antes fallaban:

Pepita.energia = 100
energia

# Veamos si se entiende: mirá los objetos en la solapa Biblioteca y escribí el estado de cada uno.

module Obera
    #...más cosas que ahora no interesan...
End

module Pepita
    @energia = 100
    @ciudad = Obera
    #...más cosas que ahora no interesan...
end

module Kiano1100
    #...más cosas que ahora no interesan...
end

module RolamotoC115
    #...más cosas que ahora no interesan...
end

module Enrique
    @celular = Kiano1100
    @dinero_en_billetera = 13
    @frase_favorita = 'la juventud está perdida'
end 

# ¡Muy bien! Tu solución pasó todas las pruebas

estado_pepita = %w(
    energia
    ciudad
)

estado_kiano1100 = %w(
)

estado_rolamotoC115 = %w(
) 

estado_enrique = %w(
    celular
    dinero_en_billetera
    frase_favorita
)