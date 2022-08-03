# Si está débil, come diez gramos de alpiste, para recuperarse.
# Si no está debil pero sí feliz, vuela en círculos cinco veces.
# Si no está feliz ni débil, vuela en círculos 3 veces.
# Modificá a Pepita para que el método hacer_lo_que_quiera! se comporte como mencionamos más arriba.

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
    
    # def self.hacer_lo_que_quiera!
    #     if self.debil?
    #         self.comer_alpiste!(10)
    #     else
    #         if self.feliz?
    #             5.times{self.volar_en_circulos!}
    #         else
    #             3.times{self.volar_en_circulos!}
    #         end
    #     end 
    # end

    def self.hacer_lo_que_quiera!
        if self.debil?
            self.comer_alpiste!(10)
        elsif self.feliz?
            5.times{self.volar_en_circulos!}
        else
            3.times{self.volar_en_circulos!}
        end
    end
end