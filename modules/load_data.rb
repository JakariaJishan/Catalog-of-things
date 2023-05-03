require 'json'

module LoadData
  def load_music
    if File.exist?('./music_albums.json') && !File.empty?('./music_albums.json')
      json_string = File.read('music_albums.json')
      data = JSON.parse(json_string)
      @albums = data.map do |a|
        MusicAlbum.new(a['on_spotify'], a['publish_date'], a['album_name'] )
      end
    else
      File.write('music_albums.json', JSON.generate([])) unless File.exist?('music_albums.json')
  
    end
  end

  def load_genre
    if File.exist?('./genres.json') && !File.empty?('./genres.json')
      json_string = File.read('genres.json')
      data = JSON.parse(json_string)
      @genres = data.map do |g|
        Genre.new(g['name'])
      end
    else
      File.write('genres.json', JSON.generate([])) unless File.exist?('genres.json')
  
    end
  end
end