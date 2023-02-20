class MyfavoritesController < ApplicationController
  before_action :set_myfavorite, only: %i[ show edit update destroy ]

  # GET /myfavorites or /myfavorites.json
  def index
    @myfavorites = Myfavorite.all
  end

  # GET /myfavorites/1 or /myfavorites/1.json
  def show
  end

  # GET /myfavorites/new
  def new
    @myfavorite = Myfavorite.new
  end

  # GET /myfavorites/1/edit
  def edit
  end

  # POST /myfavorites or /myfavorites.json
  def create
    @myfavorite = Myfavorite.new(myfavorite_params)

    respond_to do |format|
      if @myfavorite.save
        format.html { redirect_to myfavorite_url(@myfavorite), notice: "Myfavorite was successfully created." }
        format.json { render :show, status: :created, location: @myfavorite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myfavorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myfavorites/1 or /myfavorites/1.json
  def update
    respond_to do |format|
      if @myfavorite.update(myfavorite_params)
        format.html { redirect_to myfavorite_url(@myfavorite), notice: "Myfavorite was successfully updated." }
        format.json { render :show, status: :ok, location: @myfavorite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myfavorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myfavorites/1 or /myfavorites/1.json
  def destroy
    @myfavorite.destroy

    respond_to do |format|
      format.html { redirect_to myfavorites_url, notice: "Myfavorite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myfavorite
      @myfavorite = Myfavorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myfavorite_params
      params.require(:myfavorite).permit(:smart_phone_name, :description, :price, :color)
    end
end
