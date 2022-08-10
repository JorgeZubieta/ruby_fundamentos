class Zombi
    # en las clases ponemos los objetos inicializados dentro de initialize
    def initialize(puntos)
        @salud = puntos
        # NOTA -> ahora podemos definir la cantidad de salud!
    end
            
            # ¡Muy bien! Tu solución pasó todas las pruebas
            # Lo que hiciste recién en la clase Zombi fue especificar un constructor: decirle a la clase cómo querés que se construyan sus instancias.
            
            # Los constructores pueden recibir más de un parámetro. Por ejemplo, si de una Planta no sólo pudiéramos especificar su altura, sino también su especie y si da o no frutos...
            
            # jazmin = Planta.new 70, "Jasminum fruticans", true


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