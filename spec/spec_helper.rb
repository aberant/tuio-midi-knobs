require 'rubygems'
require 'spec'
require 'rr'


$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'live_interface'
require 'live_interface/clip'
# require 'live_interface/midi_interface'

Spec::Runner.configure do |config|
    config.mock_with RR::Adapters::Rspec
end

def setup_midi
  @midi = Object.new
  stub( MidiInterface ).driver.returns( @midi )
end

def setup_server
  mock( socket = Object.new )

  # stub out networking
  stub(socket).bind("", 3333)
  stub(UDPSocket).new { socket }

  TuioClient.new
end