# 1 Agregale 20 nuevos zombis a la colección caminantes. ¡No olvides que los números entienden el mensaje "TIMES"!

# 2 Luego, agregale un método -> ataque_masivo! a Sobreviviente -> que reciba una colección de zombis y los "ataque" a todos con "15 puntos de daño".

class Sobreviviente
    #Completá aquí...
    def initialize
        @energia = 1000
    end
    
    def energia
        @energia
    end
    
    def atacar!(zombie, puntos_de_danio)
        zombie.recibir_danio!(puntos_de_danio)
    end
    
    def ataque_masivo!(z)
        z.each { |z| atacar!(z, 15) }    
        # z puede ser cualquier zombie!
    end
    
end

#CONSOLA
juliana = Sobreviviente.new
anastasia = Sobreviviente.new

#Agrega los zombis a la colección acá, forma de declarar muchos zombies  
caminantes = [ ] # declaramos la variable para la coleccion
20.times {caminantes.push Zombi.new} # push para agregar zombies

# ¡De acuerdo! Es importante tener en cuenta que nuestros objetos también pueden crear otros objetos, enviando el mensaje new a la clase que corresponda.

# Por lo tanto, los casos en los que un objeto puede conocer a otro son:
# 1 Cuando es un objeto bien conocido, como con los que veníamos trabajando hasta ahora
# 2 Cuando el objeto se pasa por parámetro en un mensaje (Juliana.atacar bouba, 4)
# 3 Cuando un objeto crea otro mediante el envío del mensaje new