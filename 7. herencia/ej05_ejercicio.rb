class Dispositivo
    def initialize
        @bateria = 100
    end

    def bateria
        @bateria
    end
    
    def cargar_a_tope!
        @bateria = 100
    end
    
    def descargado?
        @bateria <= 20
    end
end

class Celular < Dispositivo
    def utilizar!(minutos)
        @bateria = bateria - minutos / 2
    end
end

class Notebook < Dispositivo
    def utilizar!(minutos)
        @bateria = bateria - minutos
    end
end

# ¿Acaso para la Notebook no deberíamos preguntar si está descargada? en lugar de descargado??

# ¡Puede ser! Pero si tuvieramos un método por cada clase, no podríamos tratar polimórficamente a los objetos. Por ejemplo, no habría manera de saber cuántos dispositivos están descargados porque no existiría un único mensaje que respondiera nuestra pregunta.

> dispositivos.count { |dispositivo| dispositivo.descargado? }
=> #¡Fallaría porque Notebook no podría responder al mensaje descargado?!

> dispositivos.count { |dispositivo| dispositivo.descargada? }
=> #¡Fallaría porque Celular no podría responder al mensaje descargada?!