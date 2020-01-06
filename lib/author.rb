class Author 
  attr_accessor :name, :genre 
  def initialize(name)
    @name = name
  end
  
  def posts 
    Post.all.select {|postie| postie.author == self}
  end
  
  def add_post(postie)
    postie.author = self
  end
  
  def add_post_by_name(name)
    postie = Post.new(name)
    add_post(postie)
  end 
  def post_count
    self.length
    
  end 
end