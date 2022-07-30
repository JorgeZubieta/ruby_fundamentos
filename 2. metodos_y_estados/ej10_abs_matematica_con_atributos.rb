Volar hacia un cierto punto no es tarea tán fácil: en realidad, Pepita pierde tanta energía como la mitad de kilómetros que tenga que recorrer.

Aunque en el mapa real no sea así, imaginaremos que las ciudades están ubicadas en línea recta, para facilitar los cálculos:



Por ejemplo, si Pepita está en Obera y quiere volar a Iruya debe recorrer 670 kilómetros, por lo que perderá 335 unidades de energía.

¿Y si Pepita está en Iruya y quiere volar a Obera? ¡También! La distancia entre dos ciudades siempre es un valor positivo . Para resolver esto contamos con el mensaje abs que entienden los números y nos retorna su valor absoluto:

> 17.abs
=> 17
> (-17).abs
=> 17
> (1710 - 1040).abs
=> 670
> (1040 - 1710).abs
=> 670
> (1040 - 1710).abs / 2
=> 335

# Sabiendo esto:
# 	• Definí el objeto que representa a BuenosAires.
# 	• Definí en Obera, Iruya y BuenosAires un método kilometro -> que retorne la altura a la que se encuentran, según el esquema. ¡Cuidado! No tenés que guardar el valor en un atributo @kilometro sino simplemente retornar el número que corresponde.
# 	• Modificá el método volar_hacia! de Pepita para hacer el cálculo de la distancia y alterar su energía. Para acceder al kilometro inicial de Pepita tenes que hacer @ciudad.kilometro.
#     Para que el ejemplo tenga sentido, vamos a hacer que Pepita arranque con la energía en 1000.

# Tené en cuenta que el ejemplo que vimos nos muestra el cálculo de la distancia entre Obera e Iruya. Sin embargo, Pepita tiene que poder volar desde su ciudad hasta cualquier destino.

module BuenosAires
    def self.kilometro
        0
    end
end

module Obera
    def self.kilometro
        1040
    end
end

module Iruya
    def self.kilometro
        1710
    end  
end

module Pepita
    @energia = 1000
    @ciudad =

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
    @energia = @energia - (@ciudad.kilometro - destino.kilometro).abs / 2
    # @ciudad.kilometro -> nos da los kilometros de la cuidad actual
    # destino.kilometro -> kilometros de la ciudad destino
    # abs convierte a numero absoluto siempre positivo
    @ciudad = destino
    end
end

