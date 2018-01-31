class SightingsController < OpenReadController
  before_action :set_sighting, only: [:update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]

  # GET /sightings
  def index
    @sightings = Sighting.order(id: :desc)

    render json: @sightings
  end

  # GET /sightings/1
  def show
    # render json: @sighting
    render json: Sighting.find(params[:id])
  end

  # POST /sightings
  def create
    # @sighting = Sighting.new(sighting_params)
    @sighting = current_user.sightings.build(sighting_params)

    if @sighting.save
      render json: @sighting, status: :created, location: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sightings/1
  def update
    if @sighting.update(sighting_params)
      render json: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sightings/1
  def destroy
    @sighting.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_sighting
      # @sighting = Sighting.find(params[:id])
      @sighting = current_user.sightings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sighting_params
      params.require(:sighting).permit(:bird, :characteristics, :body_color)
    end
end
