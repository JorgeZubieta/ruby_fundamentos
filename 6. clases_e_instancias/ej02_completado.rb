module Juliana
    @energia = 1000
    
    def self.energia
        @energia
    end
    
    def self.atacar!(zombie, puntos_de_danio)
        zombie.recibir_danio!(puntos_de_danio)
    end
end