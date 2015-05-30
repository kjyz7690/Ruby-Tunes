require 'xmlsimple'

class Application
  def initialize(path)
    @path = path
    filePath = @path + '/' + 'iTunes Music Library.xml'
    @config = XmlSimple.xml_in(filePath, {'KeyAttr' => 'Track ID'} )
  end
end