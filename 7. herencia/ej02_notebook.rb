class Notebook
    def initialize
        @bateria = 100
    end

    def bateria
        @bateria
    end

    def utilizar!(minutos)
        @bateria = bateria - minutos
    end

    def cargar_a_tope!
        @bateria = 100
    end     
end

# ¡Muy bien! Pero... las clases Celular y Notebook son demasiado parecidas, ¿no?
# Más específicamente en los métodos initialize y cargar_a_tope! son iguales.
# ¡Obviamente se puede evitar esa repetición de lógica! Vamos al siguiente ejercicio a ver cómo.