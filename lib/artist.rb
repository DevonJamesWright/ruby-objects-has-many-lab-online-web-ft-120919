class Artist 
  attr_accessor :name, :genre 
  def initialize(name)
    @name = name
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end 
  def self.song_count
    self.length?
    
  end 
end