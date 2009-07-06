# require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )
# 
# describe Clip do
#   before :each do
#     @midi = mock("midi")
#     MidiInterface.stub!(:driver).and_return( @midi )
#   end
#   
#   it "sends the correct scene and track information when triggered" do
#     track = 1
#     scene = 0 
#     
#     clip = Clip.new( track, scene )
#     
#     @midi.should_receive(:control_change).with( track, 0, scene )
#     clip.trigger
#   end
# end