module Juegoteca 
  @juegos = [CarlosDuty, TimbaElLeon, Metroide]
  
  def self.juegos
    @juegos
  end
  
  # Puntos inicialmente en 0
  @puntos = 0
  
  def self.puntos
    @puntos
  end
  
  def self.adquirir_juego!(un_juego)
    @juegos.push(un_juego)
    @puntos += 150
  end
  
  def self.borrar_juego!(un_juego)
    # no resta puntos
    @juegos.delete(un_juego)
  end
  
  def self.completa?
    @puntos > 1000 && @juegos.size > 5
  end
  
  def self.juego_recomendable?(un_juego)    
    !(@juegos.include?(un_juego)) && un_juego.violento?
    #debemos tener cuidado con el uso de los parentesis
  end
end