$:.unshift File.join( File.dirname( __FILE__ ), 'rbcoremidi' )

require 'midi_in'

# puts CoreMIDI::API.get_sources
midi_in = MidiIn.new
midi_in.scan
midi_in.link(0)

while true
  if midi_events = midi_in.new_data?
    midi_events.each do |event| 
      puts event.data.inspect
    end
  end
end
# midi_in.capture do |messages|
#   messages.each do |message|
#     puts message.inspect
#   end
# end
