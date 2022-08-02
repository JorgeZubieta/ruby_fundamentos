module Pepita
    @energia = 1000

    def self.energia
        @energia 
    end

    def self.volar_en_circulos!
        @energia -= 10
    end
    
    def self.comer_alpiste!(gramos)
        @energia += gramos * 15
    end  

    def self.debil?
        energia < 100
    end
    
    def self.feliz?
        energia > 1000
    end
end

# NOTA -> utilizamos ? para verificar, validar si es verddeo o falso!