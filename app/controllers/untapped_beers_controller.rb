class UntappedBeersController < ApplicationController
  before_action :set_untapped_beer, only: [:show, :edit, :update, :destroy]

  # GET /untapped_beers
  # GET /untapped_beers.json
  def index
    @untapped_beers = UntappedBeer.all
  end

  # GET /untapped_beers/1
  # GET /untapped_beers/1.json
  def show
  end

  # GET /untapped_beers/new
  def new
    @untapped_beer = UntappedBeer.new
  end

  # GET /untapped_beers/1/edit
  def edit
  end

  # POST /untapped_beers
  # POST /untapped_beers.json
  def create
    @untapped_beer = UntappedBeer.new(untapped_beer_params)

    respond_to do |format|
      if @untapped_beer.save
        format.html { redirect_to @untapped_beer, notice: 'Untapped beer was successfully created.' }
        format.json { render :show, status: :created, location: @untapped_beer }
      else
        format.html { render :new }
        format.json { render json: @untapped_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /untapped_beers/1
  # PATCH/PUT /untapped_beers/1.json
  def update
    respond_to do |format|
      if @untapped_beer.update(untapped_beer_params)
        format.html { redirect_to @untapped_beer, notice: 'Untapped beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @untapped_beer }
      else
        format.html { render :edit }
        format.json { render json: @untapped_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /untapped_beers/1
  # DELETE /untapped_beers/1.json
  def destroy
    @untapped_beer.destroy
    respond_to do |format|
      format.html { redirect_to untapped_beers_url, notice: 'Untapped beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_untapped_beer
      @untapped_beer = UntappedBeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def untapped_beer_params
      params.require(:untapped_beer).permit(:beer_style, :rating_score, :description, :untapped_id, :updated)
    end
end
