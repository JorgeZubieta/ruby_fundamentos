# Para finalizar Inodoro pueda tomar mate con cualquiera de sus compinches... ¡Polimórficamente!

# 1 - Cuando Inodoro toma mate aumenta en 10 su cafeína en sangre y su compinche recibe un mate.
# 2 - Al recibir un mate, Eulogia se enoja porque Inodoro siempre le da mates fríos.
# 3- Por su parte, Mendieta se descompone cuando recibe un mate, porque bueno... es un perro. Esto provoca que no tenga nada de ganas de hablar (o en otras palabras, que sus ganas_de_hablar se vuelvan 0).

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
    
    # toma y da, elos reciben! 
    def self.tomar_mate!
        @cafeina_en_sangre += 10 
        @compinche.recibir_mate!
    end
    
end

module Eulogia
    @enojada = false
    # consulta si esta enojada  
    def self.enojada?
        @enojada
    end  
    
    #recibir mate y se enoja porque sta frio
    def self.recibir_mate!
        @enojada = true
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
    
    def self.recibir_mate!
        #Esto provoca que no tenga nada de ganas de hablar (o en otras palabras, que sus ganas_de_hablar se vuelvan 0).
        @ganas_de_hablar=0
    end
end