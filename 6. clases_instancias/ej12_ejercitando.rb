class Sobreviviente
    def initialize
        @energia = 1000
    end

    def energia
        @energia
    end
    
    def atacar!(zombie, danio)
        zombie.recibir_danio!(danio)
    end
    
    def ataque_masivo!(zombis)
        zombis.each { |zombi| atacar!(zombi, 15) }
        # un ataque_masivo! su energía disminuye a la mitad.
        @energia -= energia / 2
    end
    
    def beber!
        # su energia aumenta un 25%.
        @energia = energia + (energia * 25 /100)   
    end
end