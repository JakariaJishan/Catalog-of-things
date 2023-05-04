require './classes/music_album'
require './classes/genre'
require './modules/music_module'
require './modules/genre_module'
require './modules/book_module'
require './modules/game_module'
require './modules/label_module'
require './modules/load_data'

class App
  include MusicAlbumModule
  include GenreModule
  include LoadData
  include BookModule
  include LableModule
include GameModule

  def initialize
    @books = []
    @albums = []
    @genres = []
    @labels = []
    @games = []
  end

  def options
    puts 'Please choose an option by enterin a number:'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all genres'
    puts '4 - List all labels'
    puts '5 - Add a book'
    puts '6 - Add a music album'
    puts '7 - Exit'
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def choose_an_option(choice)
    case choice
    when 1
      list_all_books
    when 2
      list_music_albums
    when 3
      list_genres
    when 4
      list_all_labels
    when 5
      list_all_games
    when 6
      add_book
    when 7
      add_music_album
    when 8 
      add_game
    when 9
      puts 'Thank you for using this app!'
    else
      puts 'Invalid choice.'
      puts ''
      start
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def start
    load_music
    load_genre
    load_book
    load_label
    options
    choice = gets.chomp.to_i
    choose_an_option(choice)
  end
end
