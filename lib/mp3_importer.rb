require "pry"

class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    @files ||= Dir.glob("#{path}/*.mp3").collect {|files| files.gsub("#{path}/", "") }
  end 
  
  def import 
    files.each do |filename|
      Song.new_by_filename(filename)
    end 
  end 
  
end 