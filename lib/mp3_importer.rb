class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  def files
    basedir = @path
  Dir.glob(["*.mp3"], [base: @path])
  end
  def import
    
  end
  
end