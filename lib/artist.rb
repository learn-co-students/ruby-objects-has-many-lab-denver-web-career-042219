require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = [] # Don't like having to use this here, but only way to get song_count to work

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    @@all << song
    song.artist = self
  end

  def self.song_count
    @@all.count
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end
  
end

#binding.pry
