class Genre
  def initialize(name)
    @id = Random.rand(1..1000)
    @items = []
  end

  def add_item(item)
    return if @items.include?(item)

    @items << item
    item.genre = self
  end
end