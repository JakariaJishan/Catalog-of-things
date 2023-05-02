require_relative 'item'

class Genre
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    return if @items.include?(item)

    @items << item
    item.genre = self
  end
end
