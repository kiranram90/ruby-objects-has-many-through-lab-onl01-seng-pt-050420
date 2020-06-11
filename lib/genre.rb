class Genre 
  @@all =[] 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def artist 
    Song.all.select |song|
     song.ge
  end
  
  def songs 
    Song.all.select do |song|
      song.genre = self 
    end
  end
  
  def self.all 
    @@all 
  end
  
  
  
end