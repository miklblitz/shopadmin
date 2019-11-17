class RazdelsController < ApplicationController
  before_action :set_razdel, only: [:show, :edit, :update, :destroy]

  # GET /razdels
  # GET /razdels.json
  def index
    @razdels = Razdel.all
  end

  # GET /razdels/1
  # GET /razdels/1.json
  def show
  end

  # GET /razdels/new
  def new
    @razdel = Razdel.new
  end

  # GET /razdels/1/edit
  def edit
  end

  # POST /razdels
  # POST /razdels.json
  def create
    @razdel = Razdel.new(razdel_params)

    respond_to do |format|
      if @razdel.save
        format.html { redirect_to @razdel, notice: 'Razdel was successfully created.' }
        format.json { render :show, status: :created, location: @razdel }
      else
        format.html { render :new }
        format.json { render json: @razdel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /razdels/1
  # PATCH/PUT /razdels/1.json
  def update
    respond_to do |format|
      if @razdel.update(razdel_params)
        format.html { redirect_to @razdel, notice: 'Razdel was successfully updated.' }
        format.json { render :show, status: :ok, location: @razdel }
      else
        format.html { render :edit }
        format.json { render json: @razdel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razdels/1
  # DELETE /razdels/1.json
  def destroy
    @razdel.destroy
    respond_to do |format|
      format.html { redirect_to razdels_url, notice: 'Razdel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_razdel
      @razdel = Razdel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def razdel_params
      params.require(:razdel).permit(:name)
    end
end
