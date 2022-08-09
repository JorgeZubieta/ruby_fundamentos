module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.juegos_violentos
        # En este caso juegos_violentos que retorna los juegos de la Juegoteca que cumplan cierta condición. Tiene algún efecto o solo nos devuelve los juegos que cumplen la condición, esa es la razón por la cuál no lleva el !
        juegos_violentos = @juegos.select {|juegoX| juegoX.violento? } 
    end
    
    def self.promedio_de_violencia 
        juegos_violentos.sum { |game| game.dificultad } / juegos_violentos.count
    end
    # NOTA -> sum y count forma de declarar!
end