
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
    
end


# ¡Muy bien! Tu solución pasó todas las pruebas
# ¡Genial!

# Esto de la herencia está buenísimo. Porque nos permite heredar el comportamiento de una superclase pero redefinir aquellas cosas que nuestras subclases hacen distinto. Pero cuidado, si tenemos que redefinir todo probablemente no necesitemos heredar en primer lugar.

# ¿Y qué pasa cuando en una subclase no hago lo mismo que en la superclase pero tampoco es taaaan distinto?

# ¡Vamos a verlo!

