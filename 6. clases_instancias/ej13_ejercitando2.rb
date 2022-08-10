class Aliado
    def initialize
        # energia inicial = 500 puntos  -> disminuye un 5% al atacar!
        @energia = 500
    end

    def energia
        @energia
    end

    def atacar!(zombie, danio)
        zombie.recibir_danio!(danio)
    
        # disminuye un 5% al atacar!
        @energia = energia - (energia * 5 / 100)
    end

    def ataque_masivo!(zombis)
        # pero su ataque_masivo! es más violento: -> brinda 20 puntos de daño en lugar de 15.
        zombis.each { |zombi| atacar!(zombi, 20) }
        @energia -= energia / 2 
    end

    def beber!
    # Y además, beber! les provee menos energía: solo aumenta un 10%.
      @energia = energia + (energia * 10 /100)   
    end
end

