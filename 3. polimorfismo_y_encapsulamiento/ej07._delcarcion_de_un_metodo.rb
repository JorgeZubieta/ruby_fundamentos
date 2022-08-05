# Cada vez que firmamos un contrato cambiamos el ave que entrenará Pachorra, por lo cual es necesario recordar cuál es ya que a ella le enviaremos mensajes:

# Pachorra.entrenar_ave! # acá entrena a Pepita
# Pachorra.firmar_contrato! Pepo # ahora el ave de Pachorra es Pepo
# Pachorra.entrenar_ave! # ahora entrena a Pepo

# Agregale a Pachorra el método firmar_contrato!(ave), de forma tal que cuando le enviemos el mensaje entrenar_ave! haga entrenar al último ave con el que haya firmado contrato.
# El método firmar_contrato! solo cambia el ave de Pachorra, no hay que hacer nada más en ese método.

module Pachorra
    def self.firmar_contrato! (ave)
        @ave = ave
        # declaro con @ el metodo que toma un valor
    end
    
    def self.entrenar_ave!
        10.times { @ave.volar_en_circulos! }
        @ave.comer_alpiste!(30)
        5.times { @ave.volar_en_circulos! }
        @ave.hacer_lo_que_quiera!
    end
end