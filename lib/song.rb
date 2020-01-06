class Song 
  attr_accessor :artist, :genre, :name
    @@all = []
  def initialize (name)
    @name = name 
    save
  end 

  def save(song)
    @@all << self
  end

  def self.all
   @@all 
  end 
end