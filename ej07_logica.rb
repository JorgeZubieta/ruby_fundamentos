Ejercicio 7: Al menos tenemos salud
Quizá hayas notado que nuestra clase Zombi tiene, al igual que tuvieron los objetos Bouba y Kiki en su momento, un atributo @salud. Seguramente tu Zombi se ve similar a este:

class Zombi
    def initialize
        @salud = 100
    end

    def salud
        @salud
    end
    #...y otros métodos
end
Pero ahora que @salud aparece en la clase Zombi, ¿eso significa que comparten el atributo? Si Juliana ataca a bouba, ¿disminuirá también la salud de kiki?

¡Averigualo! Hacé que Juliana ataque a cada zombi con distintos puntos de daño y luego consultá la salud de ambos.

¡Dame una pista!
¡Recordá que el mensaje atacar! tiene dos parámetros: un zombie y una cantidad de puntos de daño!

#Biblioteca
module Juliana
    def self.atacar!(zombi, puntos)
        zombi.recibir_danio!(puntos)
    end
end

class Zombi
    def initialize
        @salud = 100
    end

    def salud
        @salud
    end

    def sabe_correr?
        false
    end

    def sin_vida?
        @salud == 0
    end

    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 2, 0].max
    end

    def gritar
        "agrrrg!"
    end
end

bouba = Zombi.new
kiki = Zombi.new

# Consola
> Juliana.atacar!(kiki, 20)
=> 60
> Juliana.atacar!(kiki, 200)
=> 0