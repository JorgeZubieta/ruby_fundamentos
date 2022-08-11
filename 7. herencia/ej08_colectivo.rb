
class Colectivo < MedioDeTransporte
    def maximo_personas
        20
    end
    
    def recorrer!(kilometros)
        @combustible -= kilometros * 2
    end
end

# ¡Muy bien! Tu solución pasó todas las pruebas
# ¿20 personas un colectivo? Yo he visto que lleve más. ¿Además sin pasajeros?

# Bueno, bueno, es verdad. Vamos a mejorar un poco nuestro Colectivo.

