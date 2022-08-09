# # Definí el método jugar_a_todo! en la Juegoteca

# 1 - que haga jugar a cada uno de los juegos durante 5 horas

# Recordá que los juegos entienden jugar!(un_tiempo).

module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.jugar_a_todo!
        @juegos.each {|game| game.jugar! 5}
        # NOTA -> puede ir sin el @
    end
end