class ActiveBeersController < ApplicationController
  before_action :set_active_beer, only: [:show, :edit, :update, :destroy]

  # GET /active_beers
  # GET /active_beers.json
  def index
    @active_beers = ActiveBeer.all
  end

  # GET /active_beers/1
  # GET /active_beers/1.json
  def show
  end

  # GET /active_beers/new
  def new
    @active_beer = ActiveBeer.new
  end

  # GET /active_beers/1/edit
  def edit
  end

  # POST /active_beers
  # POST /active_beers.json
  def create
    @active_beer = ActiveBeer.new(active_beer_params)

    respond_to do |format|
      if @active_beer.save
        format.html { redirect_to @active_beer, notice: 'Active beer was successfully created.' }
        format.json { render :show, status: :created, location: @active_beer }
      else
        format.html { render :new }
        format.json { render json: @active_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_beers/1
  # PATCH/PUT /active_beers/1.json
  def update
    respond_to do |format|
      if @active_beer.update(active_beer_params)
        format.html { redirect_to @active_beer, notice: 'Active beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_beer }
      else
        format.html { render :edit }
        format.json { render json: @active_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_beers/1
  # DELETE /active_beers/1.json
  def destroy
    @active_beer.destroy
    respond_to do |format|
      format.html { redirect_to active_beers_url, notice: 'Active beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_beer
      @active_beer = ActiveBeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_beer_params
      params.require(:active_beer).permit(:Location_id, :Beer_id)
    end
end
