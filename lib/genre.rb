class Genre 
  @@all =[] 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def artist 
    genre = []
   genre << self.songs
   genre.select do |genres|
     genres.
   
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