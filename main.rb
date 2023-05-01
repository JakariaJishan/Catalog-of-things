def main
  puts 'Welcome to Catalog things app'
  puts ''

  app = App.new
  app.run
end

class App
  def options
    puts 'Please choose an option by enter a number:'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all movies'
    puts '4 - List of games'
    puts '5 - List all genres'
    puts '6 - List labels'
    puts '7 - Exit'
  end
  # rubocop:disable Metrics/CyclomaticComplexity

  def verify_options(option)
    case option
    when 1 then list_books
    when 2 then list_music_albums
    when 3 then list_all_movies
    when 4 then list_games
    when 5 then list_all_genres
    when 6 then list_labels
    when 7
      puts 'Thank you. Hope you enjoy the app'
      exit
    else
      puts 'Invalid choice. Please try again.'
      run
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def run
    options
    value = gets.chomp.to_i
    verify_options(value)
  end
end

main
