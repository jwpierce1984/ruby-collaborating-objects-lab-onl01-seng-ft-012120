class MP3Importer
  attr_accessor :path
  
  def initialize (path)
    @path = path
  end
  
  def files
    Dir["/path/to/search/**/*.mp3"]
  end
  
end