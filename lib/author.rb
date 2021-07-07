class Author
  attr_reader :all
  attr_accessor :name, :posts

  @@all = []

  def initialize (name)
    @name = name
    @posts = []
    @@all<< self
  end

  def self.all
    @@all
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts<< post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    self.add_post(title)
  end

def self.post_count
  Post.all.count
end















end
