class Song
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, genre, artist)
    @name = name 
    @genre = genre 
    @artist = artist 
    @@all << self 
    
  end
  
  def self.all 
    @@all 
  end 
  
  
end