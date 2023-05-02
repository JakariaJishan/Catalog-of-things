require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(date, archived = 0, on_spotify = 0)
    super(date, archived)
    @on_spotify = on_spotify.zero?
  end

  private

  def can_be_archived?
    return true if super && on_spotify = 1 

    false
  end
end