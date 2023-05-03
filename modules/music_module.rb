require 'pry'
require_relative '../app'

module MusicAlbumModule
  def add_music_album
    print 'Enter the name of the album: '
    album_name = gets.chomp
    print 'Is the album on Spotify? (y/n): '
    on_spotify = gets.chomp.downcase == 'y'
    print 'Enter the publish date (YYYY-MM-DD): '
    publish_date = gets.chomp
    print 'Enter the genre: '
    name = gets.chomp
    genre = Genre.new(name)
    music_album = MusicAlbum.new(on_spotify, publish_date, album_name)
    music_album.genre = genre
    @albums << music_album
    puts @albums.inspect
    @genres << genre
    save_genre_music_data
    puts 'Music album added successfully'
    puts ''
    start
  end

  def save_genre_music_data
    music_albums_data = @albums.map do |a|
      {
        id: a.id,
        on_spotify: a.on_spotify,
        publish_date: a.publish_date,
        album_name: a.album_name,
        genre: a.genre.name
      }
    end
    File.write('./data/music_albums.json', JSON.pretty_generate(music_albums_data))
    genres_data = @genres.map { |g| { id: g.id, name: g.name } }
    File.write('./data/genres.json', JSON.pretty_generate(genres_data))
  end

  def list_music_albums
    if @albums.empty?
      puts 'The list is empty'
      puts ''
      start
    end
    @albums.each do |album|
      puts "Album name: #{album.album_name}, on Spotify: #{album.on_spotify}"
    end
    puts ''
    start
  end
end
