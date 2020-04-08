class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def files
  @files = Dir["./spec/fixtures/**/*.mp3"]
  @files.collect {|x| x.split()}
  
  end
  def import
    Song.new_by_file_name(@files)
  end
  
end