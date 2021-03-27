class HybridsController < ApplicationController
  before_action :set_hybrid, only: [:show, :update, :destroy]

  # GET /hybrids
  def index
    @hybrids = Hybrid.all

    render json: @hybrids
  end

  # GET /hybrids/1
  def show
    render json: @hybrid
  end

  # POST /hybrids
  def create
    @hybrid = Hybrid.new(hybrid_params)

    if @hybrid.save
      render json: @hybrid, status: :created, location: @hybrid
    else
      render json: @hybrid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hybrids/1
  def update
    if @hybrid.update(hybrid_params)
      render json: @hybrid
    else
      render json: @hybrid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hybrids/1
  def destroy
    @hybrid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hybrid
      @hybrid = Hybrid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hybrid_params
      params.require(:hybrid).permit(:img_src, :caption)
    end
end
