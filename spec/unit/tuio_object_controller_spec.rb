require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe TuioObjectController do
  before :each do
    @controller = TuioObjectController.new

    @tuio_object = Object.new
    @tuio_object.stub!(:fiducial_id).and_return( 42 )
    @tuio_object.stub!(:angle).and_return( 1 )
    @tuio_object.stub!(:rotation).and_return( 1 )
  end

  it "should create knob objects from the fiducial id" do
    Knob.should_receive(:new).with( 42 )

    @controller.create_event( @tuio_object )
  end

  it "updates knob objects after they are created" do
    knob = Object.new
    Knob.should_receive(:new).with( 42 ).and_return( knob )
    knob.should_receive(:move).with( 1 )

    @controller.create_event( @tuio_object )

    @controller.update_event( @tuio_object )
  end
end