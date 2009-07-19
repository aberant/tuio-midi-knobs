class Knob
  MIDI_CHANNEL = 16
  attr_reader :knob_id
  
  def initialize( id )
    @knob_id = id
  end
  
  def move( radians )
    @midi = MidiInterface.driver
    midi_value = (radians / ( 2 * Math::PI ) ) * 127
    @midi.control_change( @knob_id, MIDI_CHANNEL, midi_value.to_i )
  end
end