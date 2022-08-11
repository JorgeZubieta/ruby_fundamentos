# 1 1Evitar repetir la lógica de aquellos métodos que son iguales, ya que se pueden definir únicamente en la superclase Zombi;

# 2 redefinir en SuperZombi aquellos métodos cuya definición sea distinta a la de Zombi;

# 3 definir únicamente en SuperZombi el comportamiento que es exclusivo a esa clase.

# Veamos si se entiende: hacé que la clase SuperZombi herede de Zombi y modificala para que defina únicamente los métodos cuyo comportamiento varía respecto de Zombi. ¡Notá que la inicialización también es igual en ambas clases!

class Zombi
    def initialize(salud_inicial)
        @salud = salud_inicial
    end
    
    def salud
        @salud
    end
    
    def gritar
        "¡agrrrg!"
    end
    
    def sin_vida?
        @salud == 0
    end 
    
    def sabe_correr?
        false
    end

    def recibir_danio!(puntos)
      @salud = [@salud - puntos * 2, 0].max
    end
end

class SuperZombi < Zombi

    def sabe_correr?
        true
    end

    def recibir_danio!(puntos)
        @salud = [@salud - puntos * 3, 0].max
    end
    
    def regenerarse!
        @salud = 100
    end
end

# ¡Muy bien! Tu solución pasó todas las pruebas
# Prestá atención: lo que hicimos aquí es parecido a la herencia de los dispositivos, pero no igual. En nuestro ejemplo anterior, Dispositivo es una clase abstracta, porque nunca la vamos a instanciar, y nuestros dos dispositivos heredan de ella. Pero, ¿no queremos instanciar a la clase Zombi?