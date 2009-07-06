require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe Knob do
  before :each do
    setup_midi
  end
  
  it "has an identifier" do
    Knob.new( 42 ).knob_id.should == 42
  end
  
  it "generates midi commands based on it's id and the angle provided in radians" do
    @knob = Knob.new( 42 )
    mock( @midi ).control_change( 42, MIDI_CHANNEL, 31 )
    
    # 90 degrees
    @knob.move( 1.57079633 )
  end
  
end