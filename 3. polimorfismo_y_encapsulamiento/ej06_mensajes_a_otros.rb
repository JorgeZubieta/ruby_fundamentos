# Para ayudarnos en esta tarea conseguimos a Pachorra. Él diseñó una rutina especial que consiste en lo siguiente:

# Volar en círculos 10 veces.
# Comer un puñado de 30 gramos de alpiste.
# Volar en círculos 5 veces.
# Como premio, que el ave haga lo que quiera.
# Creá a Pachorra, el entrenador de aves, y hacé que cuando reciba el mensaje entrenar_ave! haga que Pepita realice su rutina (si, solo puede entrar a Pepita , pero lo solucionaremos pronto).

# Recordá que la que entrena es Pepita, su entrenador solo le dice lo que tiene que hacer.

# ¡Ah! Y para que un objeto pueda mandarle mensajes a otro debe conocerlo. Por ejemplo, llamándolo por su nombre como ya hemos hecho: Pepita.energia

module Pachorra
    def self.entrenar_ave!
        10.times { Pepita.volar_en_circulos! }
        Pepita.comer_alpiste!(30)
        5.times { Pepita.volar_en_circulos! }
        Pepita.hacer_lo_que_quiera!
    end  
end

# ¡Muy bien! Tu solución pasó todas las pruebas
# Aunque lo que hiciste funciona, es bastante rígido: para que Pachorra pueda entrenar a otro pájaro hay que modificar el método entrenar_ave! y cambiar el objeto al que le envía los mensajes.
