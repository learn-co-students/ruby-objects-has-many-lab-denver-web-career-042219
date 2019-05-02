require 'pry'
class Song
  # attr_reader :name
  attr_accessor :artist, :name
  @@all = []

  def initialize name
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
      if @artist == nil
        nil
      else
        @artist.name
      end
    end
end
