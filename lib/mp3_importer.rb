class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def files
  @files = Dir["./spec/fixtures/**/*.mp3"]
  @files.collect {|x| 
  x.split("./spec/fixtures/mp3s/")[1]}
  
  end
  def import
    Song.new_by_filename(@files)
  end
  
end