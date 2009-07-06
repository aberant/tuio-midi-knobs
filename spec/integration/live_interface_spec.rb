require File.join( File.dirname( __FILE__ ), '..', 'spec_helper' )

describe LiveInterface do
  before :each do
    @tuio_client = TuioClient.new
    mock( TuioClient ).new.returns( @tuio_client )
    
    
  end
  it "calls the controller create event when tuio new object event is triggered" do
    new_tuio_object = Object.new
    
    stub( new_tuio_object ).fiducial_id { 42 }
    
    mock( @tuio_client ).on_object_creation.yields(  new_tuio_object )
    LiveInterface.new
  end
  
  # it "calls the controller update event when tuio update object event is triggered" do
  # 
  # 
  # end
end