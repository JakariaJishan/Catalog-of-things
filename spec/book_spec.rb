require 'rspec'
require_relative '../classes/book'

RSpec.describe Book do
  describe '#new' do
    it 'returns a Book object' do
      book = Book.new('jack publisher', 'good', '2023-02-02')
      expect(book).to be_an_instance_of(Book)
    end
  end

  describe '#can_be_archived?' do
    it 'returns false when cover state is good' do
      book = Book.new('jack publisher', 'good', '2023-02-02')
      expect(book.send(:can_be_archived?)).to eq(false)
    end

    it 'returns true when cover state is bad and is old enough to be archived' do
      book = Book.new('jack publisher', 'bad', '2023-02-02')
      expect(book.send(:can_be_archived?)).to eq(true)
    end
  end
end
