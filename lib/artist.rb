class Artist 
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(song, genre, artist)
    Song.new(song, genre, self)
    song.artist == self 
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end
  end
  
  def genres 
    
  end
  
  def self.all 
    @@all 
  end
end