# Sabiendo cómo se escribe la alternativa condicional en Ruby queremos que Pepita, además de recibir órdenes, tenga sus momentos para poder hacer lo que quiera.

# Obviamente, qué quiere hacer en un momento dado depende de su estado de ánimo:

# Si está débil, come diez gramos de alpiste, para recuperarse.
# Si no lo está, no hace nada.
# Hacé que Pepita entienda el mensaje hacer_lo_que_quiera! que se comporte como explicamos.


module Pepita
    @energia = 1000

    def self.energia
        @energia 
    end

    def self.volar_en_circulos!
        @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
         @energia += gramos * 15
    end  

    def self.debil?
        energia < 100
    end
    
    def self.feliz?
        energia > 1000
    end
    
    def self.hacer_lo_que_quiera!
        if self.debil?
            self.comer_alpiste!(10)
        end
    end
end