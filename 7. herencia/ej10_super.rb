class Colectivo < MedioDeTransporte
  
    def initialize
        @combustible = 100
        @pasajeros = 0
    end
    
    def recorrer!(kilometros)
      @combustible -= kilometros * 2
    end
    
    def entran?(nuevos_pasajeros)
        true
    end  
    
    def cargar_combustible!(litros)
        super # ejecuta cargar de la superclase + super!
        @pasajeros = 0 
    end
end