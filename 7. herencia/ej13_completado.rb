class Persona
    def energia
        @energia
    end
    
    def atacar!(zombi, danio)
        zombi.recibir_danio! danio
    end
end

class Sobreviviente < Persona
    def initialize
        @energia = 1000
    end

    def beber!
        @energia *= 1.25
    end
end

class Aliado < Persona
    def initialize
        @energia = 500
    end
    
    def beber!
        @energia *= 1.10
    end

    def atacar!(zombi, danio)
        super
        @energia *= 0.95
    end
end