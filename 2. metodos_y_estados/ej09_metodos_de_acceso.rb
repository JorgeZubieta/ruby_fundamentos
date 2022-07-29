# Queremos saber dónde se encuentra Pepita, para lo cual necesitamos agregarle un mensaje ciudad que nos permita acceder al atributo del mismo nombre.
# Inspirándote en la definición de energia, definí el método ciudad que retorne la ubicación de nuestra golondrina.
# 	• Solución
# 	• Consola

module Pepita
    @energia = 100
    @ciudad = Obera
    
    def self.energia
        @energia 
    end

    def self.cantar!
        'pri pri pri'
    end

    def self.comer_lombriz!
        @energia += 20
    end

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.volar_hacia!(destino)
        @energia -= 100
        @ciudad = destino
    end
End

# SOLUCION

# module Pepita

    def self.energia
        @energia = 100
    end

    def self.ciudad
        @ciudad = Obera
    end

#   def self.energia
#     @energia 
#   end

#   def self.cantar!
#     'pri pri pri'
#   end
 
#   def self.comer_lombriz!
#     @energia += 20
#   end

#   def self.volar_en_circulos!
#     @energia -= 10
#   end

#   def self.volar_hacia!(destino)
#     @energia -= 100
#     @ciudad = destino
#   end
# End

# FUNCIONA SOLO CON este metodo YA QUE ESTOS METODOS CUMPLEN CON LO QUE PIDE SOBRE EL DESTINO.

module Pepita
    def self.ciudad
        @ciudad = Obera
    end
end

# A estos métodos que sirven para conocer el valor de un atributo los llamamos métodos de acceso o simplemente accessors, por su nombre en inglés.