# En los ejercicios anteriores, le habíamos incluido a Pachorra y Emilce un mensaje firmar_contrato!(ave) que modificaba su estado, es decir, alguno de sus atributos.
# A estos mensajes que solo modifican un atributo los conocemos con el nombre de setters, porque vienen del inglés set que significa establecer, ajustar, fijar.

# Para estos casos, solemos utilizar una convención que se asemeja a la forma que se modifican los atributos desde el propio objeto, pudiendo ejecutar el siguiente código desde una consola:
# Emilce.ave = Pepita

# Esto se logra definiendo el método ave=, todo junto, como se ve a continuación:

module Emilce
    def self.ave=(ave_nueva)
    # debemos respetar la estructura del setter "nombre="" 
    @ave = ave_nueva
    # el getter debe llevar el mismo nombre
    end

    def self.entrenar_ave!
        53.times { @ave.volar_en_circulos! }
        @ave.comer_alpiste!(8)
    end
end

# Como ya te habíamos contado en una lección anterior, a estos métodos que solo sirven para acceder o modificar un atributo los llamamos métodos de acceso o accessors. Repasando, los setters son aquellos métodos que establecen el valor del atributo. Mientras que los getters son aquellos que devuelven el valor del atributo.

# La convención en Ruby para estos métodos es:
# Aquellos getters que devuelven el valor de un atributo booleano llevan ? al final.

module Pachorra
    def self.ave=(ave_nueva)
        # Los setters deben llevar el mismo nombre del atributo al que están asociados, agregando un = al final.    
        @ave = ave_nueva
        # Los getters usan exactamente el mismo nombre que el atributo del cual devuelven el valor pero sin el @.
    end

    def self.entrenar_ave!
        10.times { @ave.volar_en_circulos! }
        @ave.comer_alpiste! 30
        5.times { @ave.volar_en_circulos! }
        @ave.hacer_lo_que_quiera!
    end
end

