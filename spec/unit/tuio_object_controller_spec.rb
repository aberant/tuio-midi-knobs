require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe TuioObjectController do
  before :each do
    @controller = TuioObjectController.new
    
    @tuio_object = Object.new
    stub( @tuio_object ).fiducial_id.returns( 42 )
    stub( @tuio_object ).angle.returns( 1 )
    stub( @tuio_object ).rotation.returns( 1 )
  end
  
  it "should create knob objects from the fiducial id" do
    mock(Knob).new( 42 )
    
    @controller.create_event( @tuio_object )
  end
  
  it "updates knob objects after they are created" do
    knob = Object.new
    mock( Knob ).new( 42 ).returns( knob )
    mock( knob ).update( 1 )
    
    @controller.create_event( @tuio_object )
    
    @controller.update_event( @tuio_object )
  end
end