require 'rspec'
require_relative '../classes/music_album'

RSpec.describe MusicAlbum do
  describe '#new' do
    it 'returns a MusicAlbum object' do
      music_album = MusicAlbum.new(true, '2008-05-02')
      expect(music_album).to be_an_instance_of(MusicAlbum)
    end
  end

  describe '#can_be_archived?' do
    it 'returns false whewn the albun is not on Spotify' do
      music_album = MusicAlbum.new(false, '2023-05-02')
      expect(music_album.send(:can_be_archived?)).to eq(false)
    end

    it 'returns true when album is on Spotify and is old enough to be archived' do
      music_album = MusicAlbum.new(true, '2008-05-02')
      expect(music_album.send(:can_be_archived?)).to eq(true)
    end
  end
end
