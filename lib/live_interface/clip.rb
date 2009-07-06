class Clip
  def initialize( track, scene )
    @midi = MidiInterface.driver

    @track, @scene = track, scene
  end
  
  def trigger
    @midi.control_change( @track, 0, @scene )
  end
end