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
    
    def self.sin_vida?
        @salud <= 0
        # con el <= se cumplio!
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
    
    def self.sin_vida?
        # salud < 0
        # sin el = no se cumple!
    
        # SOLUCION
        salud <= 0
        # menor que cero muere el muerto, con el = a cero es un muerto vivo!
    end
end

# Al igual que nos pasó con el resto de los mensajes, sin_vida? es exactamente igual para ambos zombis. ¡Otra vez hubo que escribir todo dos veces!

# Ahora ya es imposible no verlo: todo lo que se modifique en un zombi también se modifica en el otro. ¿Qué problemas nos trae esto?

# Aunque nos equivoquemos en una cosa, el error se repite dos veces.
# Si cambiara la forma en la que, por ejemplo, reciben daño, tendríamos que reescribir recibir_danio dos veces.
# ¿Y si hubiese diez zombis en lugar de dos? ¿Y si hubiese cien? ¡Cuántas veces habría que copiar y pegar!
# Veamos una solución posible...