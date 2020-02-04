class Song
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end
  
  def artist_name=(artist)
    
  end
end