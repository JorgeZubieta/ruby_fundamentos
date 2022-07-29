# Como la operación @energia = @energia - 10es tan común,
# se puede escribir @energia -= 10.
# Como te imaginarás, también se puede hacer con la suma.
# Sabiendo esto:
# 	• cambiá la definición del método volar_en_circulos! para que utilice la expresión simplificada;
# 	• definí la versión correcta del método comer_lombriz!, que provoca que Pepita gane 20 puntos de energía;
# 	• Solución
# 	• Consola

module Pepita
    @energia = 100

    def self.volar_en_circulos!
        @energia -= 10
    end

    def self.comer_lombriz!
        @energia += 20
    end
end

# Los atributos (los cuales escribiremos anteponiendo @)
# Nuevo elemento del paradigma de objetos: , son objetos que nos permiten representar una característica de otro objeto.

# Un objeto conoce a todos sus atributos por lo que puede enviarles mensajes, tal como hicimos con @energia.

# Entonces, si le pude enviar mensajes a @energia, ¿eso significa que los números también son objetos?
# ¡Claro que sí! ¡Todo-todo-todo es un objeto!