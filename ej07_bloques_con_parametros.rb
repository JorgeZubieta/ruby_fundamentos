# Biblioteca
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

# Solucion
Biblioteca
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

# Solucion x consola
jugar_a_timba = proc { |cantidad_de_minutos|  
    horas = cantidad_de_minutos / 60
    TimbaElLeon.jugar!(horas) 
}
