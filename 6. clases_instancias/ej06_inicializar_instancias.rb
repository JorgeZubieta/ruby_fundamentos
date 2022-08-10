# BIBLIOTECA
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

# CONSOLA
bouba = Zombi.new
kiki = Zombi.new

# ¡Muy bien! Tu solución pasó todas las pruebas
# ¿Por qué ahora escribimos bouba en lugar de Bouba? ¿O por qué celular_de_maría en lugar de CelularDeMaría?

# Hasta ahora estuvimos jugando con objetos bien conocidos, como Pepita o Fito. Esos objetos, al igual que las clases, comienzan en mayúscula. Pero bouba y celular_de_maría son variables: en particular, son referencias que apuntan a instancias de Zombi y Celular.

# Y como ya aprendiste anteriormente, las variables como saludo, despedida, o kiki comienzan con minúscula.