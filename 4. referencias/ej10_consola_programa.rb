# Ejercicio 10: Objetos compartidos

# Fito también tiene:
# 1 - Un amigo = Juli.
# 1 - Juli es nieto deAbueloGervasio.
# 3 - Cuando Juli es feliz Fito es feliz:

module Fito
	def self.amigo=(un_amigo)
        @amigo = un_amigo
    end
	
    def self.es_feliz_como_su_amigo?
        @amigo.felicidad > 105
    end
end

# Creá un programa que :
# 1 - inicialice al amigo de Fito
# 2 - y al nieto de AbueloGervasio de forma que ambos conozcan al mismo objeto (Juli).
# 3 - Luego, hacé que el abuelo alimente a su nieto 3 veces. 
# 4 - ¿Qué pasará con Fito? ¿Se pondrá feliz?

# ¡Recordá que los números entienden el mensaje "times", que recibe un bloque y lo ejecuta tantas veces como el valor del número!

# También recordá que para que el abuelo alimente a su nieto tenés que enviarle el mensaje "alimentar_nieto!".


#Juli, Fito y AbueloGervasio ya están declarados.
#Inicializalos y enviales mensajes acá...


# CONSOLA -> form de declarar el programa para "OBJETOS COMPRATIDOS"
    Fito.amigo = Juli 
    AbueloGervasio.nieto = Fito.amigo
    # AbueloGervasio.nieto = Juli -> tambien funciona poque apunta kla mismo objeto Juli!
    3.times{AbueloGervasio.alimentar_nieto!}
    Fito.es_feliz_como_su_amigo? #cumple la condicion true!

#NOTA -> Si antes de alimentar al nieto preguntáramos Fito.es_feliz_como_su_amigo?, respondería false
