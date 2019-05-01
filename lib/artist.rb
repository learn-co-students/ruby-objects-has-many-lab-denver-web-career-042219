# Artist is on the many side, will hold the SSOT

require "pry"

class Artist
  attr_reader :name, :all
  attr_writer
  attr_accessor :songs

  @@all = []

  def self.all
    @@all
  end

  def self.song_count
    @@all.select do |artist|
      !artist.songs.empty?
    end.count
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist=(self)
  end

  def add_song_by_name(song)
    song =Song.new(song)
    self.add_song(song)
  end



end


# require "./song.rb"
# Artist.new("Adele")
# hello = Song.new("Hello")
# adele.add_song_by_name("Rolling in the Deep")
# adele.songs.last.name
# adele.songs.last.artist
