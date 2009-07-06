class MidiInterface
  def self.driver
    unless @midi
      @midi = MIDIator::Interface.new
      @midi.autodetect_driver
    end
    
    @midi
  end
end