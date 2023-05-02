require 'rspec'
require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  let(:genre) { Genre.new('jazz') }
  let(:item) { Item.new('2023-04-26') }

  describe '#new' do
    it 'returns a Genre object' do
      expect(genre).to be_an_instance_of(Genre)      
    end
  end

  describe '#Items' do
    it 'returns an empty array if no items' do
      expect(genre.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'Add an item to items Array' do
      genre.add_item(item)

      expect(genre.items.length).to eq 1
    end
  end
end