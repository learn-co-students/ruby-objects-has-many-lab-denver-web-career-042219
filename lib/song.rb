class Song
attr_accessor :artist, :name, :genre
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end

def self.all
  @@all
end

def name
  @name
end

end
