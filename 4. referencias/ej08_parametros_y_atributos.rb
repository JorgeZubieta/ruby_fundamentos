

module Pepita
    @energia = 100

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.ciudad=(una_ciudad)
        @ciudad = una_ciudad
    end

    def self.ciudad
        @ciudad
    end
end

module Iruya
end

# Escribí un programa que:
# 1 - defina la ciudad de Pepita de forma que apunte a Iruya.
# 2 - pensá: ¿cuántas referencias a Iruya hay en este programa?

# x consola
#Ya definimos a Pepita por vos.
#Ahora definí su ciudad...
Pepita.ciudad = Iruya

# ¡Muy bien! Tu solución pasó todas las pruebas ¿Lo pensaste?

# Hay tres referencias a este objeto:
# 1 La propia referencia Iruya
# 2 El atributo @ciudad de Pepita
# 3 una_ciudad: porque los parámetros de los métodos ¡también son referencias! Sólo que su vida es más corta: viven lo que dure la evaluación del método en el que se pasan.