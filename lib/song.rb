class Song 
  attr_accessor :artist, :genre, :name
    @@all = []
  def initialize (name)
    @name = name 
    save
  end 

  def save
    @@all << self
  end
  def artist_name
    self.artist.name
  end
  def self.all
   @@all 
  end 
end

class Nil 
attr_accessor :name 
end