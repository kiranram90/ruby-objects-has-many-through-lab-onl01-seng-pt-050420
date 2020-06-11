class Artist 
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << name 
    
  end
  
  def new_song(song, genre, artist)
    Song.new(song, genre, artist)
    song.artist = self 
  end
  
  def songs 
    Songs.all.select do |song|
      song.artist = self 
    end
  end
  
  def genres 
    
  end
  
  def self.all 
    @@all 
  end
