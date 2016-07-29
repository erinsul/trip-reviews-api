class DescriptionsController < ApplicationController
  before_action :set_description, only: [:show, :update, :destroy]

  # GET /descriptions
  # GET /descriptions.json
  def index
    @descriptions = Description.all

    render json: @descriptions
  end

  # GET /descriptions/1
  # GET /descriptions/1.json
  def show
    render json: @description
  end

  # POST /descriptions
  # POST /descriptions.json
  def create
    @description = Description.new(description_params)

    if @description.save
      render json: @description, status: :created, location: @description
    else
      render json: @description.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /descriptions/1
  # PATCH/PUT /descriptions/1.json
  def update
    @description = Description.find(params[:id])

    if @description.update(description_params)
      head :no_content
    else
      render json: @description.errors, status: :unprocessable_entity
    end
  end

  # DELETE /descriptions/1
  # DELETE /descriptions/1.json
  def destroy
    @description.destroy

    head :no_content
  end

  private

    def set_description
      @description = Description.find(params[:id])
    end

    def description_params
      params.require(:description).permit(:trip_id, :tag_id)
    end
end
