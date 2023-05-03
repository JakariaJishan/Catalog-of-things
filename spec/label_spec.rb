require 'rspec'
require_relative '../classes/label'
require_relative '../classes/item'

describe Label do
  let(:label) { Label.new('jazz', 'red') }
  let(:item) { Item.new('2023-04-26') }

  describe '#new' do
    it 'returns a Label object' do
      expect(label).to be_an_instance_of(Label)
    end
  end

  describe '#Items' do
    it 'returns an empty array if no items' do
      expect(label.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'Add an item to items Array' do
      label.add_item(item)

      expect(label.items.length).to eq 1
    end
  end
end
