class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def files
    basedir = @path
  @files = 
  end
  def import
    Song.new_by_file_name(@files)
  end
  
end