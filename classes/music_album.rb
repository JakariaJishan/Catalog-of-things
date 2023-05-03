require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :album_name, :publish_date

  def initialize(on_spotify, publish_date, album_name, archived: false)
    super(publish_date, archived: archived)
    @on_spotify = on_spotify
    @album_name = album_name
  end

  private

  def can_be_archived?
    return true if super && on_spotify == true

    false
  end
end
