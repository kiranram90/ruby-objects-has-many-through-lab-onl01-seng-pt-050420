class Song
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, genre, artist)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def artist 
    
  end
  
  def self.all 
    @@all 
  end 
  
  
end