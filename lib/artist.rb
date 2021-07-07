require 'pry'

class Artist
  attr_reader :all
  attr_accessor :songs, :name

  @@all = []

  def initialize name
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
      @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
      song =Song.new(song)
      self.add_song(song)
  end


  def self.song_count
      Song.all.count
  end






end
