require 'coremidi'

class Controller < Struct.new(:controller, :data) ; end
class Note < Struct.new(:on_off, :note_number, :velocity) ; end

class MidiIn
  include CoreMIDI

  def initialize
    # Names are arbitrary
    client = CoreMIDI.create_client("SB")
    @port = CoreMIDI.create_input_port(client, "PortA")
  end

  def scan
    CoreMIDI.sources.each_with_index do |source, index|
      puts "source #{index}: #{source}"
    end
  end

  def link(source)
    connect_source_to_port(source, @port) # 0 is index into CoreMIDI.sources array
  end

  def capture
    while true
     if packets = new_data?
       yield parse(packets)
     end
   end
  end
  
  def parse(packets)
    packets.collect do |packet|
      case packet.data[0]
      when 144..146
        Note.new(:on, packet.data[1], packet.data[2])
      when 130
        Note.new(:off, packet.data[1], packet.data[2])
      when 176
        Controller.new(packet.data[1], packet.data[2])
      end
    end
  end
end
