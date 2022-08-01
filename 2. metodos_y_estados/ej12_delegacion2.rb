# Hay un pequeño problema conceptual con la solución anterior: ¿por qué Pepita, una golondrina, es responsable de calcular la distancia entre dos ciudades?

# Dicho de otra manera, ¿es necesario contar con una golondrina para poder calcular la distancia entre dos lugares? ¿Cual es el objeto más pequeño que podría saber hacer esto?

# ¿Lo pensaste? La respuesta es simple: ¡la misma ciudad! Por ejemplo, BuenosAires podría entender un mensaje distancia_a, que tome otra ciudad y devuelva la distancia entre ésta y sí misma.

# Modificá la solución del ejercicio anterior para que sean las ciudades las que calculan las distancias. Pensá que no solo Obera debe tener este método, sino también BuenosAires e Iruya, para cuando tenga que volver.

# Con las herramientas que vimos hasta ahora, no queda más opción que repetir el mismo código en las tres ciudades.

# Solución
module Obera
    def self.kilometro
        1040
    end

    def self.distancia_a(destino)
        (self.kilometro - destino.kilometro).abs
    end
end

module Iruya
    def self.kilometro
        1710
    end 

    def self.distancia_a(destino)
        (self.kilometro - destino.kilometro).abs
    end
end

module BuenosAires
    def self.kilometro
        0
    end

    def self.distancia_a(destino)
        (self.kilometro - destino.kilometro).abs
    end
end

module Pepita
    @energia = 1000
    @ciudad = Obera

    def self.energia
        @energia 
    end

    def self.ciudad
        @ciudad
    end

    def self.cantar!
        'pri pri pri'
    end

    def self.comer_lombriz!
        @energia += 20
    end

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.volar_hacia!(destino)
        self.gastar_energia!(destino)
        @ciudad = destino
    end

    def self.gastar_energia!(destino)
        @energia -= @ciudad.distancia_a(destino) / 2
        # self.ciudad.distancia_a(destino) / 2 -> tambien funciona porque apunta 
    end

end

# NOTA -> revisar como se cumple la delegacion @ciudad!!!


