class Genre 
  
  
  attr_reader :name, :genre
  attr_accessor :song
  
  def initialize(name)
    @name = name
  end
  
  def artist 
    
   
  end
  
  def songs 
    Song.all.select do |song|
    song.genre == self 
   end
  end
  
  def self.all 
    @@all 
  end
  
  
  
end