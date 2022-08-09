# Agregá a la Juegoteca un método llamado dificultad_violenta que retorne una colección con la dificultad de sus juegos_violentos.

module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.juegos_violentos
        # En este caso juegos_violentos que retorna los juegos de la Juegoteca que cumplan cierta condición. Tiene algún efecto o solo nos devuelve los juegos que cumplen la condición, esa es la razón por la cuál no lleva el !
        juegos_violentos = @juegos.select {|juegoX| juegoX.violento? }
        # NOTA
        # @juegos.select {|juegoX| juegoX.violento? } => tambien funciona ya que no hacemos uso de la variable creada juegos_violentos!!!!
    end
    
    def self.dificultad_violenta
        juegos_violentos.map {|juegos| juegos.dificultad } 
    end
end

# Antes de seguir, un caso particular. Dijimos que map no modifica la colección original. Pero, ¿qué ocurriría si el mensaje dentro del bloque en el map sí tiene efecto?

# En ese caso se modificaría la colección original, pero sería un mal uso del map . Lo que nos interesa al mapear es lo que devuelve el mensaje que enviamos, no provocar un efecto sobre los objetos.