# Definí un objeto AbuelaClotilde que entienda:
# 1 - un mensaje alimentar_nieto!
# 2 - que haga comer! 2 veces a Fito: primero con 2000 calorias, y luego con 1000 calorías; ¡el postre no podía faltar! .

#Ya declaramos a Fito por vos.
#¡Desarrollá a la AbuelaClotilde acá!

module AbuelaClotilde
    def self.alimentar_nieto!
        Fito.comer! 2000
        Fito.comer! 1000    
    end
end

# Muchas veces, en lugar de decir que le enviamos un mensaje al objeto apuntado por la referencia Fito, podemos llegar a decir...

# 	enviar un mensaje a la variable Fito
# ...o...
# 	enviar un mensaje al objeto Fito
# ...o simplemente...
# 	enviar un mensaje a Fito
# ...porque si bien no es del todo correcto, es más breve. Lo 

# Importante es que entiendas que siempre estamos enviando el mensaje al objeto a través de una referencia.
