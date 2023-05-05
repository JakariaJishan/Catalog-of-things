require_relative '../app'
require_relative '../classes/game'
require_relative '../classes/author'
module GameModule
  def add_game
    puts 'Enter your first name: '
    first_name = gets.chomp

    puts 'Enter your last name: '
    last_name = gets.chomp

    puts 'Multiplayer available? y/n : '
    multiplayer = gets.chomp.downcase[0] == 'y'

    print 'Last played date dd/mm/yyyy :'
    last_played_at = gets.chomp

    print 'Game publish date dd/mm/yyyy :'
    publish_date = gets.chomp

    game = Game.new(multiplayer, last_played_at, publish_date)
    author = Author.new(first_name, last_name)

    game.author = author
    @games << game
    @authors << author
    puts 'Game added successfully✅'
    save_game_data

    puts ''

    start
  end

  def save_game_data
    game_data = @games.map do |a|
      {
        id: a.id,
        multiplayer: a.multiplayer,
        last_played_at: a.last_played_at,
        publish_date: a.publish_date,
        first_name: a.author.first_name,
        last_name: a.author.last_name
      }
    end
    File.write('./data/games.json', JSON.pretty_generate(game_data))
    author_data = @authors.map { |g| { id: g.id, first_name: g.first_name, last_name: g.last_name } }
    File.write('./data/authors.json', JSON.pretty_generate(author_data))
  end

  def list_all_games
    if @games.empty?
      puts 'The list is empty'
      puts ''
      start
    end
    @games.each do |game|
      puts "the last game of #{game.author.first_name} #{game.author.last_name} was played at: #{game.last_played_at}"
    end
    puts ''
    start
  end
end
