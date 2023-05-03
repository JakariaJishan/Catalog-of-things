require_relative '../app'

module MusicAlbumModule
  def add_music_album
    print "Enter the name of the album: "
    album_name = gets.chomp
    print "Is the album on Spotify? (y/n): "
    on_spotify = gets.chomp.downcase == 'y'
    print "Enter the publish date (YYYY-MM-DD): "
    publish_date = gets.chomp
    print 'Enter the genre: '
    name = gets.chomp
    music_album = MusicAlbum.new(on_spotify, publish_date, album_name)
    genre = Genre.new(name)
    music_album.genre = genre
    @albums << music_album
    @genres << genre
    puts ''
    start
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
