
class MP3Importer
  attr_accessor :path, :files, :collect
  def initialize(path)
    @path = path
  end
  def files
  @files = Dir["./spec/fixtures/**/*.mp3"]
 @collect = []
 @files.each {
   |x| 
  @collect << x.split("./spec/fixtures/mp3s/")[1]}
  @collect
  
  end
  def import
    
    @collect.each{ |x| Song.new_by_filename(x) }
    
    
  end
end