class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize (name)
    @name = name
    @songs = [] 
    save
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def save
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
end