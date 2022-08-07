# Biblioteca
module CarlosDuty
    @cantidad_logros = 0
    def self.violento?
        # ... 
    end
    def self.dificultad
        # ... 
    end
    def self.jugar!(un_tiempo)
        # ... 
    end
end

module TimbaElLeon
    @dificultad = 25
    def self.violento?
        # ... 
    end

    def self.dificultad
        # ... 
    end

    def self.jugar!(un_tiempo)
        # ... 
    end
end

module Metroide
    @nivel_espacial = 3
    def self.violento?
        # ... 
    end

    def self.dificultad
        # ... 
    end

    def self.jugar!(un_tiempo)
        # ... 
    end
end

# EJERCICIO
# Mientras tanto, en nuestra juegoteca...
# ¡Ahora te toca a vos! Definí el método juegos_violentos que retorna los juegos de la Juegoteca que cumplan violento?.

module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.juegos_violentos
        # self.juegos_violentos! -> sin signo
        # En este caso juegos_violentos que retorna los juegos de la Juegoteca que cumplan cierta condición. Tiene algún efecto o solo nos devuelve los juegos que cumplen la condición, esa es la razón por la cuál no lleva el !
        juegos_violentos = @juegos.select {|juegoX| juegoX.violento? } 
    end 
end

# ¿Y qué pasa con la colección original, como algunos_numeros o juegos? ¿Se modifica al aplicar select?
# ¡No, para nada! El select no produce efecto.