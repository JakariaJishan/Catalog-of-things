require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date, :label

  def initialize(multiplayer, last_played_at, publish_date, _archived = 0)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    return true if super &&  (Date.today - Date.parse(@last_played_at)).to_i > 365 * 2

    false
  end
end
