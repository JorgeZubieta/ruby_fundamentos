# Declaracion de una lista
# NOTA : vemos con self.juegos va sin sigo de !

module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
end