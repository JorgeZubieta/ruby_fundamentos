
class Zombi
    # en las clases ponemos los objetos inicializados dentro de initialize
    def initialize
        @salud = 100
    end
    
    #Escribí el resto de los métodos aquí...
    
    def salud
        @salud
    end
    # al ser una clase no lleva self!
    
    def sabe_correr?
        false
    end

    def gritar
        "¡agrrrg!"
    end

    def recibir_danio!(danio)
        @salud = [ @salud - danio*2,0 ].max
    end

    def sin_vida?
        @salud <= 0 
    end
end

# ¡Muy bien! Tu solución pasó todas las pruebas
# Las clases sólo nos sirven para generalizar objetos que tengan el mismo comportamiento: mismos métodos y mismos atributos. En nuestro caso, el código de ambos celulares y de ambos zombis es el mismo, por eso pudimos generalizarlo.

# Si el código es parecido pero no puede ser generalizado para que sea el mismo, las clases no nos servirán. Al menos por ahora...