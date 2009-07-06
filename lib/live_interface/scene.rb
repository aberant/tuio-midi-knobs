class Scene
  class << self
    MIDI = MidiInterface.driver
    CHAN = 0
    
    def next
      MIDI.control_change( 0, CHAN,  1 )
      sleep 0.1
      MIDI.control_change( 0, CHAN,  127 )
      
    end
    
    def prev
      MIDI.control_change( 2, CHAN,  1 )
    end
    
    def play( scene )
      MIDI.control_change( 49, 15,  scene )
    end
  end
end

