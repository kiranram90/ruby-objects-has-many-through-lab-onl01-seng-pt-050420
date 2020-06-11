class Artist 
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << name 
    
  end
  
  def new_song(song, genre)
    Song.new(song, genre)
    song.artist = self 
  end
  
  def songs 
    Songs.all.select do |song|
      song.artist = self 
    end
  end
  
  def genres 
    self.songs.genres.each 
  end
  
  def self.all 
    @@all 
  end
  
end