require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe LiveInterface do
  before :all do
    @tuio_client = TuioClient.new
  end
  
  before :each do
    mock( TuioClient ).new.returns( @tuio_client )
  end
  
  describe "creation events" do
    before :each do
      @tuio_object = Object.new
      stub( @tuio_object ).fiducial_id { 42 }
  
      mock( @tuio_client ).on_object_creation.yields( @tuio_object )
    end
    
    it "calls the controller create event when tuio new object event is triggered" do
      LiveInterface.new
    end
    
    describe "update events are then called on the created objects" do
      before :each do
        mock( @tuio_object ).angle { 1 }
      end
      
      it "calls the controller update event when tuio update object event is triggered and asks for angle" do
        mock( @tuio_client ).on_object_update.yields( @tuio_object )
  
        LiveInterface.new
      end
    end
  end
end