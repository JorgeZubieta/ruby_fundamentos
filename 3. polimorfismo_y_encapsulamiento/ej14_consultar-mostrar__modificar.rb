# Tu tarea será completar el código que te ofrecemos, definiendo los métodos incompletos y agregando los getters y setters necesarios para que sea posible:

# Consultar cuánta cafeína en sangre tiene Inodoro.
# Consultar al compinche de Inodoro.
# Modificar al compinche de Inodoro.
# Consultar si Eulogia está enojada.
# Consultar cuántas ganas de hablar tiene Mendieta.
# Modificar las ganas de hablar de Mendieta.

module Inodoro
    @cafeina_en_sangre = 90
    
    #  cuanta cafeian en sangre
    def self.cafeina_en_sangre
        @cafeina_en_sangre
    end

    # modifica compinche
    def self.compinche=(compinche_x)
        @compinche = compinche_x
    end

    # consultar compinche
    def self.compinche
        @compinche
    end
end

module Eulogia
    @enojada = false
    # consulta si esta enojada  
    def self.enojada?
        @enojada
    end  
end

module Mendieta
    @ganas_de_hablar = 5

    # consultar cuantas ganas de hablar tiene
    def self.ganas_de_hablar
        @ganas_de_hablar
    end

    # modificar ganas de hablar
    def self.ganas_de_hablar=(ganas)
        @ganas_de_hablar = ganas
    end
end