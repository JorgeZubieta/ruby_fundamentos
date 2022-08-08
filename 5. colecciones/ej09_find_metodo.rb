module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.juego_mas_dificil_que(una_dificultad)
        @juegos.find {|juego_de_lista| juego_de_lista.dificultad > una_dificultad}
    end
    # vemos como una_dificultad -> es el juego nuevo, mientras que
    # juego_de_lista -> es uno de los juegos que tenemos
    # una_dificultad -> es el juego nuevo que entra
end

# NOTA -> Un dato curioso para tener en cuenta: ¡los mensajes find y detect hacen exactamente lo mismo!