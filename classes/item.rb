require 'date'

class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :id

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
    # new_date = Date.today - (10 * 365)
    # return true if date <= new_date
  end
end
