class SuperZombi
    def initialize(puntos)
        @salud = puntos
    end
    
    def salud
        @salud
    end
    
    def sabe_correr?
        # aprendieron a correr
        true 
    end

    def gritar
        "¡agrrrg!"
    end

    def recibir_danio!(danio)
        # sabe_correr? -> recibe el triple de daño
        @salud = [ @salud - danio*3,0 ].max
    end

    def sin_vida?
        # y queda sin_vida? en los mismos casos: cuando su salud es 0.
        @salud == 0
        # # NOTA -> @salud==0 esta comparando preguntando si esta vivo, responde con un booleano!
        
        # SI SOLO USAMOS UN = (errores)
        # -------------------
        # Un SuperZombi con salud inicial 100 no está sin vida Ver detalles ->
            expected: false
            got: 0
            (compared using ==)
        # Si un SuperZombi de salud 100 recibe 5 puntos de daño disminuye su salud en 15 puntos y no está sin vida Ver detalles ->
            expected: 85
            got: 0
            (compared using ==)
        # XSi un SuperZombi recibe mucho daño su salud es 0 y está sin vida Ver detlles ->
            expected: true
            got: 0
            (compared using ==)
        # NOTA : Nos dice DIRECTAMENTE que usemos el compardor ==
    end
    
    # 7 pueden regenerarse! -> Al hacerlo -> su salud vuelve a 100.
    def regenerarse!
        @salud = 100
    end
end

# ¡Muy bien! Tu solución pasó todas las pruebas
# Veamos por qué decidimos hacer una nueva clase, SuperZombi:

# Pueden regenerarse!, a diferencia de un Zombi
# sabe_correr? tiene comportamiento distinto a la clase Zombi
# recibir_danio! tiene comportamiento distinto a la clase Zombi

# Sin embargo habrás notado que, aunque esos últimos dos métodos son distintos, hay cuatro que son idénticos: salud, gritar, sin_vida?, y su inicialización mediante initialize. ¡Hasta tienen un mismo atributo, @salud! ¿Acaso eso no significa que estamos repitiendo mucha lógica en ambas clases?

# ¡Así es! Pero todavía no contamos con las herramientas necesarias para solucionarlo.
