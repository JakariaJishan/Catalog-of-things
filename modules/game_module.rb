module GameModule

    def add_game
        puts 'Multiplayer available? y/n : '
        multiplayer = gets.chomp.downcase[0] == 'y'

        print 'Last played date dd/mm/yyyy :'
        last_played_at = gets.chomp
    
        print 'Game publish date dd/mm/yyyy :'
        publish_date = gets.chomp

        game = Game.new(multiplayer, last_played_at, publish_date)

        @games << game

        puts "Game added successfully✅"

        puts ''

        start
    end

    def list_all_games
        if @games.empty?
          puts 'The list is empty'
          puts ''
          start
        end
        @games.each do |game|
          puts "multiplayer: #{game.multiplayer}"
        end
        puts ''
        start
      end
end