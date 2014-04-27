require 'webrick'
 
include WEBrick
port = 2000
 
puts "Starting server: http://#{Socket.gethostname}:#{port}"
server = HTTPServer.new(:Port=>2000,:DocumentRoot=>Dir::pwd )
trap("INT"){ server.shutdown }
server.start
