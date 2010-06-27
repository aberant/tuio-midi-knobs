require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe TuioMidiKnobs do
  before :all do
    setup_server
    setup_midi
    @tuio_client = TuioClient.new
  end

  before :each do
   TuioClient.should_receive(:new).and_return( @tuio_client )
  end

  describe "creation events" do
    before :each do
      @tuio_object = Object.new
      @tuio_object.stub(:fiducial_id).and_return( 42 )

      @tuio_client.stub!(:on_object_creation).and_yield( @tuio_object )
    end

    it "calls the controller create event when tuio new object event is triggered" do
      @tuio_client.should_receive(:on_object_creation).and_yield( @tuio_object )

      TuioMidiKnobs.new
    end

    describe "update events are then called on the created objects" do
      it "calls the controller update event when tuio update object event is triggered and asks for angle" do
        @tuio_client.should_receive(:on_object_update).and_yield( @tuio_object )
        @tuio_object.should_receive(:angle).and_return( 1 )
        @midi.should_receive(:control_change).with( 42, an_instance_of(Fixnum), an_instance_of(Fixnum) )

        TuioMidiKnobs.new
      end
    end
  end
end