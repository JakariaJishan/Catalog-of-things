require 'rspec'
require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  let(:author) { Author.new('Vanessa', 'Oliveros') }
  let(:item) { Item.new('2023-04-26') }

  describe '#new' do
    it 'returns an Author object' do
      expect(author).to be_an_instance_of(Author)
    end
  end

  describe '#Items' do
    it 'returns an empty array if no items' do
      expect(author.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'Add an item to items Array' do
      author.add_item(item)

      expect(author.items.length).to eq 1
    end
  end
end
