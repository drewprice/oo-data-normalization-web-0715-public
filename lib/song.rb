require 'pry'

class Song
  attr_accessor :title, :artist

  def serialize
    out = Tempfile.open([sanitize_title, '.txt'], './tmp')
    out.write("#{artist.name} - #{title}")
    out.rewind
    out.close
  end

  private

  def sanitize_title
    @title.downcase.gsub(/ /, '_')
  end
end
