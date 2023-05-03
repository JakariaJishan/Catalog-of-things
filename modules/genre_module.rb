require_relative '../app'
require 'set'

module GenreModule
  def list_genres
    if @genres.empty?
      puts 'The list is empty'
      puts ''
      start
    end
    no_duplicate_genre = Set.new
    @genres.each do |genre|
      no_duplicate_genre << genre.name
    end
    no_duplicate_genre.each do |genre_name|
      puts "- #{genre_name}"
    end
    puts ''
    start
  end
end
