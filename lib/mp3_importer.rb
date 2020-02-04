class MP3Importer
  attr_accessor :path
  
  def initialize (path)
    @path = path
  end
  
  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def import
    file.each {|n| Song.new_by_filename(n)}
  end
end