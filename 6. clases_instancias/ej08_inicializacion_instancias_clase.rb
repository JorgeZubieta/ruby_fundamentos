# Definí:
# 1 clase Sobreviviente -> que sepa atacar! zombis
# 2 e inicialice la energia en 1000.
#     En la solapa Biblioteca podés ver el código de la Juliana original.
# 3 Luego, definí juliana y anastasia como instancias de la nueva clase Sobreviviente.

# BIBLIOTECA -> modulo juliana
module Juliana
    @energia = 1000

    def self.energia
        @energia
    end

    def self.atacar!(zombie, puntos_de_danio)
        zombie.recibir_danio!(puntos_de_danio)
    end
end

# SOLUCION
class Sobreviviente
    #Completá aquí...
    def initialize
        @energia = 1000
    end
    
    def energia
        @energia
    end
    
    def atacar!(zombie,puntos_de_danio)
        zombie.recibir_danio!(puntos_de_danio)
    end
end

# Definiendo Jukiana y Anastacia como instancias de la nueva clase Sobrevivientes!
# CONSOLA
juliana = Sobreviviente.new 
anastasia = Sobreviviente.new