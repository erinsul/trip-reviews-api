class TripsController < ProtectedController
  before_action :set_trip, only: [:show, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = current_user.trips.all

    render json: @trips
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    render json: @trip
  end

  # POST /trips
  # POST /trips.json
  #Check if the place exists
  #If it does, it needs to find and add that id
  #But if it doesn't, it needs to create the place
  #then add the id as place_id to trip_id
  #then create the trip :)
  def create
    @trip = current_user.profile.trips.build(trip_params)
    # puts trip_params
    # @place = Place.find_by_name() || Place.new(trip_params)
    #   if @place.save
    #     @place = trip_params.place
    #     @place.profiles << current_user.profile
    #     redirect_to trip(@place)
    #   end
    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      head :no_content
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy

    head :no_content
  end

  private

    def set_trip
      @trip = current_user.trips.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:visited, :place_id, :profile_id)
    end
end
