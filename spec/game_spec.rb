require 'rspec'
require_relative '../classes/game'

RSpec.describe Game do
  describe '#new' do
    it 'returns a game object' do
      game = Game.new(true, '2023-02-02', '2023-02-02')
      expect(game).to be_an_instance_of(Game)
    end
  end

  describe '#can_be_archived?' do
    it 'returns false when last played at older than 2yr' do
      game = Game.new('jack publisher', '2018-02-02', '2023-02-02')
      expect(game.send(:can_be_archived?)).to eq(false)
    end

    it 'returns true when last played at older than 2yr' do
      game = Game.new('jack publisher', '2020-02-02', '2013-02-02')
      expect(game.send(:can_be_archived?)).to eq(true)
    end
  end
end
