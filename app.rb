require_relative './utils/book_add'


class App
  def initialize
    @books = []
    @albums = []
    @genres = []
    @labels = []
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
      list_albums
    when 3
      list_genres
    when 4
      list_all_labels
    when 5
      add_book
    when 6
      add_album
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'Invalid choice.'
      puts ''
      start
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def start
    options
    choice = gets.chomp.to_i
    choose_an_option(choice)
  end
end
