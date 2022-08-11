class Zombi
    def initialize(salud_inicial)
        @salud = salud_inicial
    end
    
    def salud
        @salud
    end
    
    def gritar
        "¡agrrrg!"
    end
    
    def sin_vida?
        @salud == 0
    end 
    
    def sabe_correr?
        false
    end

    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 2, 0].max
    end
    
    def descansar!(minutos)
        @salud += minutos 
    end
end

class SuperZombi < Zombi

    def sabe_correr?
        true
    end

    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 3, 0].max
    end
    
    def regenerarse!
        # Cuando descansan una cantidad de minutos, su @salud se incrementa en esa cantidad.
        @salud = 100
    end
end