require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date

  def initialize(publisher, cover_state, publish_date, _archived = 0)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
end
