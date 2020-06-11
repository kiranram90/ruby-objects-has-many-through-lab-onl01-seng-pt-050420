class Artist 
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(song, genre)
    Song.new(song, genre, self)
    song.artist == self 
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end
  end
  
  
  def genres
    Song.all.map do |song|
      song.genre
    end
  end
  
  def self.all 
    @@all 
  end
end