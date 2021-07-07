class Post
attr_accessor :author, :title
  @@all = []
  def initialize title
    @title = title
    @@all<< self
  end

def self.all
  @@all
end

def title
  @title
end

def author=(author)
  @author = author
end

def author_name
   if @author == nil
     nil
   else
     @author.name
   end
 end
end
