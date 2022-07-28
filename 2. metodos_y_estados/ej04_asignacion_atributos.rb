# ¿Cómo podríamos decir que cuando Pepita vuela, pierde 10 unidades de energía? ¿Y que inicialmente esta energía es 100? Así:

module Pepita
    @energia = 100
    def self.volar_en_circulos!
        @energia = @energia - 10
    end
end

# Una vez más, ya definimos a Pepita por vos. Probá, en orden, las siguientes consultas:
Pepita.volar_en_circulos!
Pepita.volar_en_circulos!
Pepita.energia

# Puede que los resultados te sorprendan, en breve hablaremos de esto.
Pepita.volar_en_circulos!
# => 90
Pepita.volar_en_circulos!
# => 80
Pepita.volar_en_circulos!
# => 70

Pepita.energia
undefined method `energia' for Pepita:Module (NoMethodError)

# NOTA -> porque no esta definido dentro de las interfaces de Pepita!