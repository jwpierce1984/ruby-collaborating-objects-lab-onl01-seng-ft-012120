class Song
  attr_accessor :title, :artist
  @@all = []
  
  def initialize (title)
    @title = title
    @artist = artist
    save
  end
  
  def save
    @@all << self
  end
  
#  def artist_name = name
#    self.artist = Artist.name
#    artist.add_song(self)  
#  end
  
  
  
end