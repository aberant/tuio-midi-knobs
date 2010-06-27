require 'rubygems'
require 'spec'

require 'tuio_midi_knobs'

def setup_midi
  @midi = Object.new
  MidiInterface.stub!(:driver).and_return( @midi )
end

def setup_server
  socket = mock( "socket" )

  # stub out networking
  socket.stub!(:bind).with("", 3333)

  UDPSocket.stub!(:new).and_return( socket )

  # UDPSocket.new.bind( "", 3333 )
  @server = TuioClient.new
end