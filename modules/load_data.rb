require 'json'
require 'pry'
require_relative '../classes/book'
require_relative '../classes/label'
module LoadData
  def load_music
    if File.exist?('./data/music_albums.json') && !File.empty?('./data/music_albums.json')
      json_string = File.read('./data/music_albums.json')
      data = JSON.parse(json_string)
      @albums = data.map do |a|
        genre = Genre.new(a['name'])
        music_album = MusicAlbum.new(a['on_spotify'], a['publish_date'], a['album_name'])
        music_album.genre = genre
        music_album
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

  def load_book
    if File.exist?('./data/books.json') && !File.empty?('./data/books.json')
      json_string = File.read('./data/books.json')
      data = JSON.parse(json_string)
      @books = data.map do |a|
        label = Label.new(a['label_title'], a['label_color'])
        book = Book.new(a['publisher'], a['cover_state'], a['publish_date'])
        book.label = label
        book
      end
    else
      File.write('./data/books.json', JSON.generate([])) unless File.exist?('./data/books.json')

    end
  end

  def load_label
    if File.exist?('./data/labels.json') && !File.empty?('./data/labels.json')
      json_string = File.read('./data/labels.json')
      data = JSON.parse(json_string)
      @labels = data.map do |g|
        Label.new(g['title'], g['color'])
      end
    else
      File.write('./data/labels.json', JSON.generate([])) unless File.exist?('./data/labels.json')

    end
  end

  def load_game
    if File.exist?('./data/games.json') && !File.empty?('./data/games.json')
      json_string = File.read('./data/games.json')
      data = JSON.parse(json_string)
      @games = data.map do |a|
        author = Author.new(a['first_name'], a['last_name'])
        game = Game.new(a['multiplayer'], a['last_played_at'], a['publish_date'])
        book.author = author
        game
      end
    else
      File.write('./data/games.json', JSON.generate([])) unless File.exist?('./data/games.json')

    end
  end

  def load_author
    if File.exist?('./data/authors.json') && !File.empty?('./data/authors.json')
      json_string = File.read('./data/authors.json')
      data = JSON.parse(json_string)
      @authors = data.map do |g|
        Author.new(g['first_name'], g['last_name'])
      end
    else
      File.write('./data/authors.json', JSON.generate([])) unless File.exist?('./data/authors.json')

    end
  end
end
