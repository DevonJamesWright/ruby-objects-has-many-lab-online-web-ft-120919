class Author 
  attr_accessor :title, :genre, :name
  def initialize(name = nil)
    @name = name
  end
  
  def posts 
    Post.all.select {|postie| postie.author == self}
  end
  
  def add_post(postie)
    postie.author = self
  end
  
  def add_post_by_title(title)
    postie = Post.new(title)
    add_post(postie)
  end 
  def self.post_count
    Post.all.size
    
  end 
end