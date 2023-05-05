class Label
  attr_accessor :title, :color, :items, :id

  def initialize(title, color)
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    return if @items.include?(item)

    item.label = self
    @items << item
  end
end
