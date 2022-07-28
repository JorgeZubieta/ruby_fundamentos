# EJERCICIO 3
# Con la creaciond de un modulo vacio, ¿podrá responderlos?
# Intentá enviarle a Pepita los mensajes habituales y fijate qué sucede.

# Para que no tengas que volver a escribirla, pusimos por vos la definición de Pepita en la Biblioteca.

# Siempre que te lo indiquemos, podrás usar los objetos de la Biblioteca como si los hubieras creado vos.
# 	• Consola
# 	• Biblioteca

module Pepita

End

# CONSOLA
cantar!
# undefined method
# NOTA -> no hace nada ya que no es la forma de declararlo

# EJERCICIO 3
# Para que un objeto entienda un mensaje debemos "enseñarle" cómo hacerlo, y para ello es necesario definir un método dentro de ese objeto:

module Pepita
    def self.cantar!
    end
end

# Un método es:
# la descripción de qué hacer cuando se recibe un mensaje del mismo nombre.
# Todos los métodos comienzan con def y terminan con end.
# Todos los métodos que pertenezcan al mismo objeto van dentro del mismo module.

# Agregale a la definición de Pepita los métodos necesarios para que pueda responder a los mensajes cantar!, comer_lombriz! y volar_en_circulos!.

module Pepita
    def self.cantar!
    end
    
    def self.comer_lombriz!
    end
    
    def self.volar_en_circulos!
    end
end

# Perfecto, ahora Pepita entiende casi todos los mismos mensajes que en la lección anterior. Pero, ¿hacen lo mismo?

# Antes de seguir, enviá algunos de los mensajes en la Consola y fijate qué efecto producen sobre nuestra golondrina.

Pepita
# => Pepita
Pepita.cantar!
# => nil
Pepita.comer_lombriz!
# => nil
Pepita.volar_en_circulos!
# => nil