class MedioDeTransporte
    def initialize(litros)
        #ambos comienzan con una cantidad que podemos establecer de @combustible;
        @combustible = (litros)   
    end
    
    #??????? ->  no va, ya que no es necesrio este getter solo el setter
    # def combustible
    #    @combustible
    #end
    
    def cargar_combustible!(litros)
        # ambos pueden cargar_combustible! en la cantidad que digamos
        @combustible += litros
    end
    
    def entran?(personas)
        personas <= maximo_personas
        # NOTA -> aca al poner @maximo_personas me daba muchos errores!
    end
end

class Auto < MedioDeTransporte
    def maximo_personas
        5
    end
    
    def recorrer!(kilometros)
        #recorrer! una distancia consumen medio litro de @combustible por cada kilómetro recorrido;
        @combustible -= kilometros / 2
    end
end

class Moto < MedioDeTransporte

    def maximo_personas
        2
    end
    
    def recorrer!(kilometros)
        #y consumen un litro por kilómetro recorrido;
        @combustible -= kilometros 
    end
end