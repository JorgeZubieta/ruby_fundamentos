module Pehuajo
end

module Malaquita
end

module Paris
end

module Manuelita
    @energia = 100
    @ciudad = Pehuajo
    @mineral_preferido = Malaquita
    @donde_va = Paris

    def self.energia
        @energia
    end

    def self.ciudad
        @ciudad
    end

    def self.mineral_preferido=(mineral)
        # definido como setter
        @mineral_preferido = mineral
    end

    def self.mineral_preferido
        # definido como getter
        @mineral_preferido
    end

    def self.donde_va=(ciudad)
        @donde_va = ciudad
    end
end

# seleccionar los setters y getters
# importante %w( no lleva espacio!
atributos = %w (
    energia
    ciudad
    mineral_preferido
    donde_va
)

atributos_con_getter = %w (
    # Para los getters, que sirven para obtener el valor de un atributo, usamos el mismo nombre que este.
    energia
    ciudad
    mineral_preferido
    # donde_va -> no va porque : solo esta definido como setter y no getter
        #self.mineral_preferido
        #@mineral_preferido
)

atributos_con_setter = %w (
    # Para los setters, que sirven para fijar el valor de un atributo, usamos el mismo nombre que este pero con un = al final.
    donde_va
    mineral_preferido
)