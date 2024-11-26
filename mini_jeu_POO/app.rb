require_relative 'lib/player'

# On crée 2 joueur
player1 = Player.new("Josiane")
player2 = Player.new("José")

# Kombat tan que les 2 son vivant
while player1.points_vie > 0 && player2.points_vie > 0
  puts "\nVoila l'état de nos joueurs :"
  player1.show_state
  player2.show_state

  puts "\nPasson à la fase d'attaque :"
  player1.attacks(player2) # Josiane tape José
  break if player2.points_vie <= 0 # Stop si José et KO

  player2.attacks(player1) # José tape Josiane
end
