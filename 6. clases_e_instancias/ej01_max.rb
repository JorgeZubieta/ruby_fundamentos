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
        # ¡Bien! La salud de nuestro zombi Bouba disminuye cuando recibe daño. ¡Pero aún no hay nadie que lo pueda atacar! 
    end
end