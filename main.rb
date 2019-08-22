require_relative 'object1'

puts 'Bienvenidos al programa de pocker'
puts 'Que empiece el juego'
puts ':::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::'


while true
  puts 'Elige una de las siguientes opciones'
  puts 'Jugar, Mostrar o Salir'
  option = gets.chomp.downcase.to_sym
  player = Player.new
    case option
      when :jugar
        player.play
        puts 'Estas en una nueva partida'
      when :mostrar
        player.show_hand
      when :salir
        puts 'Saliste del programa'
        exit
      else
        puts 'Elige una de las opciones dadas'
      end
end
