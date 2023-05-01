require 'date'

class Item
  attr_accessor :genre, :author, :source, :label

  def initialize(_id, date, archived = 0)
    @id = Random.rand(1..1000)
    @publish_date = Date.parse(date)
    @archived = archived.zero?
  end

  def move_to_archive
    @archived = 1 if can_be_archived?
  end

  private

  def can_be_archived?
    new_date = Date.today - (10 * 365)
    return true if date <= new_date
  end
end
