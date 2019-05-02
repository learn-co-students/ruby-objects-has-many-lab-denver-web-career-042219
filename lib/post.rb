class Post

  attr_accessor :author, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def title
    @name
  end

  def author_name
    if author != nil
      author.name
    end
  end

  def self.all
    @@all
  end

end
