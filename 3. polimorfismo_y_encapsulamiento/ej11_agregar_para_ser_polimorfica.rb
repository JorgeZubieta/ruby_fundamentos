# Bueno, ya entendimos que para el caso de Pachorra, Norita no es polimórfica con las otras aves, pero... ¿podremos hacer algo al respecto?

# ¡Claro que sí! Podemos agregarle los mensajes que le faltan, en este caso hacer_lo_que_quiera!.

# ¿Y qué hace Norita cuando le decimos que haga lo que quiera? Nada.

# Modificá a Norita para que pueda entrenar con Pachorra.

module Norita
    @energia = 500

    def self.energia
        @energia
    end

    def self.volar_en_circulos!
        @energia -= 30
    end
    
    def self.comer_alpiste!(gramos)
        @energia -= gramos
    end  

    def self.hacer_lo_que_quiera!
        # se agrego este metodo para que se cumpla el polimorfismo
    end  
end