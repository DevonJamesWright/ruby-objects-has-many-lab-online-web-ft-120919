require 'pry'
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
  else 
    nil 
    end
  end
  def self.all
   @@all 
  end 
end

