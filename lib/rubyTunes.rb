require "../lib/rubyTunes/version"
require '../lib/rubyTunes/application'
#require '../lib/rubyTunes/song'

puts 'Enter path to iTunes XML File'
path = gets.chomp

app = Application.new(path)
