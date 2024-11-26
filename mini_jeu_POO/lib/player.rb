class Player
    attr_accessor :nom, :points_vie
  
    # Init le joueur avc un nom et 10 PV
    def initialize(nom)
      @nom = nom
      @points_vie = 10
    end
  
    # Afich l'état du joureur
    def show_state
      puts "#{@nom} a #{@points_vie} points de vie"
    end
  
    # Le joueur prend des dégats
    def subir_degats(degats)
      @points_vie -= degats
      if @points_vie <= 0
        puts "le joueur #{@nom} a été tué !"
        @points_vie = 0 # Evite les PV negatif
      end
    end
  
    # Le joueur atak un autre
    def attacks(adversaire)
      puts "#{@nom} attaque #{adversaire.nom}"
      degats = calculer_degats
      puts "il lui inflige #{degats} points de domages"
      adversaire.subir_degats(degats)
    end
  
    # Calcule des degas aléatoire
    def calculer_degats
      rand(1..6) 
    end
  end
  