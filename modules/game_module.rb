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
        save_game_data

        puts ''

        start
    end

    def save_game_data
        game_data = @games.map do |a|
          {
            id: a.id,
            multiplayer: a.multiplayer,
            last_played_at : a.last_played_at,
            publish_date: a.publish_date
          }
        end
        File.write('./data/games.json', JSON.pretty_generate(game_data))
        # label_data = @labels.map { |g| { id: g.id, title: g.title, color: g.color } }
        # File.write('./data/labels.json', JSON.pretty_generate(label_data))
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