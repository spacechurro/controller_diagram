require 'rubygems'
require 'bundler/setup'

require 'yuml'

YUML::useCaseDiagram( :scruffy, :scale => 75 ) {
  _[:Admin] ^ _[:User]
  _[:Admin] - note( 'Most privilidged user' )
  _[:User] - _(:Login)
  _[:User] - _(:Logout) 
  _(:Login) < _(:Reminder) 
  _(:Login) > _(:Captcha)
}.to_png( "sample.png" )
