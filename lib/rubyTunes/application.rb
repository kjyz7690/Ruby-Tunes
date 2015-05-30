require 'xmlsimple'

class Application
  def initialize(path)
    @path = path
    self.savePath()
    filePath = @path + '/' + 'iTunes Music Library.xml'
    @config = XmlSimple.xml_in(filePath, {'KeyAttr' => 'Track ID'} )
    self.createSongHash()
  end
  def createSongHash()
      File.open('iTunesLib.rb','w') do  |itunes|
        itunes.truncate(0)
        itunes.puts @config
      end
  end
  def savePath()
    File.open('config.rb','w') do |config|
      config.puts 'path = "' + @path + '"'
    end
  end
end