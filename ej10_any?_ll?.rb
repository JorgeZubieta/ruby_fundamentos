# BIBLIOTECA
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

# SOLUCION
module Juegoteca 
    @juegos = [CarlosDuty, TimbaElLeon, Metroide]
    
    def self.juegos
        @juegos
    end
    
    def self.mucha_violencia?
        juegos.all?{ |lista| lista.violento?}
    end
    
    def self.muy_dificil?
        juegos.any? { |lista| lista.dificultad > 25 }
    end
    
end

# ¿Qué tienen de distinto all? y any? respecto aselect y find?

# Mientras que select devuelve una colección y find un elemento o nil, all? y any? siempre devuelven un valor booleano: true o false.