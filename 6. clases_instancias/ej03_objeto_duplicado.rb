# ¡Bouba no está solo! Resulta que tiene un amigo, Kiki. Podríamos decir que los dos son tal para cual: ¡el comportamiento de ambos es exactamente el mismo! Es decir, no sabe_correr?, grita "¡agrrrg!", recibe daño de la misma forma...

# Definí otro objeto, Kiki, que se comporte de la misma forma que Bouba. ¡Te dejamos a Bouba para que lo uses como inspiración!

module Bouba
    @salud = 100
    
    def self.salud
        @salud
    end
    
    def self.sabe_correr?
        false
    end
    
    def self.gritar
        "¡agrrrg!"
    end
    
    def self.recibir_danio!(danio)
        @salud = [ @salud - danio*2,0 ].max
    end
end

module Kiki
    @salud = 100
    
    def self.salud
        @salud
    end
    
    def self.sabe_correr?
        false
    end
    
    def self.gritar
        "¡agrrrg!"
    end
    
    def self.recibir_danio!(danio)
        @salud = [ @salud - danio*2,0 ].max
    end
end

# ¿Qué pasó acá? Tenemos dos objetos de comportamiento idéntico, cuya única diferencia es la referencia con la que los conocemos: uno es Bouba, el otro es Kiki. ¡Pero estamos repitiendo lógica en el comportamiento de ambos objetos!