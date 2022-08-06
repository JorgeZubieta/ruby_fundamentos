#Definí estos tres objetos de forma que entiendan los mensajes:
#dificultad
#violento?
#jugar!(un_tiempo)

module CarlosDuty
    #inicialmente el juego no tiene logros
    @cantidad_logros = 0
    
    # dificultad = 30 - @cantidad_logros * 0.5
    def self.dificultad
        30-@cantidad_logros*0.5
    end
    
    # es violento
    def self.violento?
        true
    end

    # if un_timepo > 2  -> logros += 1
    def self.jugar!(un_tiempo)
        if (un_tiempo > 2)
            @cantidad_logros += 1
        end
    end    
end

module TimbaElLeon
    # dificultad inicial es 25
    @dificultad = 25
    
    def self.dificultad
        @dificultad
    end
    
    # no es violento
    def self.violento?
        false
    end
    
    # Crece 1 punto por cada vez que se juega
    def self.jugar!(un_tiempo)
        @dificultad += un_tiempo
    end
end

module Metroide
    #dificultad siempre es = 100
    def self.dificultad
        100
    end

    # inicialemnte no es violento
    def self.violento?
        @nivel_espacial > 5
    end
    
    # Metroide debe tener @nivel_espacial
    @nivel_espacial = 3

    # arranca en nivel = 3 y se incrementea 1 cada vez que se lo juega sin importar cuanto timepo
    def self.jugar!(un_timepo)
        @nivel_espacial += 1
    end
end
