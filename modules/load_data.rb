require 'json'

module LoadData
  def load_music
    if File.exist?('./data/music_albums.json') && !File.empty?('./data/music_albums.json')
      json_string = File.read('./data/music_albums.json')
      data = JSON.parse(json_string)
      @albums = data.map do |a|
        MusicAlbum.new(a['on_spotify'], a['publish_date'], a['album_name'] )
      end
    else
      File.write('./data/music_albums.json', JSON.generate([])) unless File.exist?('./data/music_albums.json')
  
    end
  end

  def load_genre
    if File.exist?('./data/genres.json') && !File.empty?('./data/genres.json')
      json_string = File.read('./data/genres.json')
      data = JSON.parse(json_string)
      @genres = data.map do |g|
        Genre.new(g['name'])
      end
    else
      File.write('./data/genres.json', JSON.generate([])) unless File.exist?('./data/genres.json')
  
    end
  end
end