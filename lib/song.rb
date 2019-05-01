class Song
  attr_reader :name
  attr_writer
  attr_accessor :artist, :all

  require "pry"

  @@all = []

  def self.all
    @@all
  end

  def initialize(song)
    @name = song
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def name
    @name
  end

  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end

  # def self.artist(artist)
  #   @@all.select do |song|
  #     song.artist == artist
  #   end
  # end

end
