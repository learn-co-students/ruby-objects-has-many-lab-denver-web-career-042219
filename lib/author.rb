class Author

  attr_reader :name
  attr_writer
  attr_accessor

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author=(self)
    @posts << post
  end

  def add_post_by_title(post_string)
    post_string = Post.new(post_string)
    post_string.author=(self)
    @posts << post_string
  end

  # class methods
  def self.post_count
    Post.all.select do |post|
      post.author
    end.count
  end

end
