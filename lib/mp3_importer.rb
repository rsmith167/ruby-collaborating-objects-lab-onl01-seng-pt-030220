class MP3Importer
  attr_accessor :path, :files, :collect
  def initialize(path)
    @path = path
  end
  def files
  @files = Dir["./spec/fixtures/**/*.mp3"]
 @collect = []
 @files.collect {
   |x| 
  @collect << x.split("./spec/fixtures/mp3s/")[1]}
  
  end
  def import
    
    @collect.each{ |x| Song.new_by_filename(x) }
    
    
  end
  
end