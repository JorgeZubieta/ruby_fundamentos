# Hasta ahora los métodos que vimos solo producían un efecto. Si bien solo pueden devolver una cosa, ¡pueden producir varios efectos!
# Solo tenés que poner uno debajo del otro de la siguiente forma:

def self.comprar_libro!
    @plata -= 300
    @libros += 1
end

# Como te dijimos, Pepita podía volar a diferentes ciudades. Y cuando lo hace, cambia su ciudad actual, además de perder 100 unidades de energía. Las distintas ciudades vas a poder verlas en la Biblioteca.

module Iruya
end

module Obera
End

module GralLasHeras
End

module Calamuchita
End

module Ushuaia
End

# Con esto en mente:
# 	• Creá un atributo ciudad en Pepita: la ciudad donde actualmente está nuestra golondrina.
# 	• Hacé que la ciudad inicial de pepita sea Iruya.
# 	• Definí un método volar_hacia! en Pepita, que tome como argumento otra ciudad y haga lo necesario.

# Al parámetro de volar_hacia! tenés que darle un nombre. Podrías llamarlo ciudad, pero eso colisionaría con el nombre del atributo ciudad. Así que te proponemos otros nombres: una_ciudad o, mejor, destino;

module Pepita
    @energia = 100
    @ciudad = Iruya

    def self.volar_hacia! nueva_ciudad
        @ciudad = nueva_ciudad
        @energia -= 100
    end

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.comer_lombriz!
        @energia += 20
    end
end