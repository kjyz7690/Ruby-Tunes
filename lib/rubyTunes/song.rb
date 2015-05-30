require 'xmlsimple'
require 'application'

newSong = new Song('')

class Song
  def initialize(app, id)
    @id = id
  end
end