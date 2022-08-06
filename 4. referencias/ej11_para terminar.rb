# Definí los objetos necesarios para que podamos hacer lo siguiente:

#Configurar el plato del día de Jor
Jor.plato_del_dia = Fideos
#Que Jor le agregue picante
Jor.picantear!
#Preguntar si está picante
Fideos.picantes?

#Que Luchi suavice el plato que reciba como argumento
Luchi.suavizar! Fideos, 3 #-> aca nos indica que ingresamos la pasta y la cantidad de veces que quiere suavizar! 


#Descartar la salsa
Fideos.descartar_la_salsa!

# Al definir Fideos tenés la libertad de elegir cómo hacer para picantearlos o suavizarlos.


module Fideos
    @ajies = 0
    
    def self.ajies
        @ajies
    end

    def self.picantes?
        @ajies > 2
    end

    def self.descartar_la_salsa!
        @ajies = 0
    end

#---------------

    def self.agregar_picante!
        @ajies += 1
    end

    def self.sacar_picante!
        @ajies -= 1
    end
end

module Jor
    def self.plato_del_dia=(plato)
        @plato_del_dia = plato
    end

    def self.picantear!
        5.times{@plato_del_dia.agregar_picante!}
    end
end

module Luchi
    def self.suavizar!(plato, sacar_ajies)
        if (plato.ajies > 10)
            plato.descartar_la_salsa!
        elsif (plato.ajies > 2)
            sacar_ajies.times{plato.sacar_picante!}
        end
    end
end