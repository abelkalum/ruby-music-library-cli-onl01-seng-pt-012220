class MusicImporter

  def initialize(path)
    @path = path
  end
  def path
    @path
  end

  def files
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end
end 