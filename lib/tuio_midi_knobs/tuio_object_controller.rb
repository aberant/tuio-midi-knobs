class TuioObjectController
  def initialize
    @tracked = {}
  end
  
  def create_event( tuio )
    @tracked[ tuio.fiducial_id ] = Knob.new( tuio.fiducial_id )
  end
  
  def update_event( tuio )
    @tracked[ tuio.fiducial_id ].move( tuio.angle )
  end
end