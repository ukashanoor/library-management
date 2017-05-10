class AllbksController < ApplicationController
  before_action :set_allbk, only: [:show, :edit, :update, :destroy]

  # GET /allbks
  # GET /allbks.json
  def index
    @allbks = Allbk.all
  end

  # GET /allbks/1
  # GET /allbks/1.json
  def show
  end

  # GET /allbks/new
  def new
    @allbk = Allbk.new
  end

  # GET /allbks/1/edit
  def edit
  end

  # POST /allbks
  # POST /allbks.json
  def create
    @allbk = Allbk.new(allbk_params)

    respond_to do |format|
      if @allbk.save
        format.html { redirect_to @allbk, notice: 'Allbk was successfully created.' }
        format.json { render :show, status: :created, location: @allbk }
      else
        format.html { render :new }
        format.json { render json: @allbk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allbks/1
  # PATCH/PUT /allbks/1.json
  def update
    respond_to do |format|
      if @allbk.update(allbk_params)
        format.html { redirect_to @allbk, notice: 'Allbk was successfully updated.' }
        format.json { render :show, status: :ok, location: @allbk }
      else
        format.html { render :edit }
        format.json { render json: @allbk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allbks/1
  # DELETE /allbks/1.json
  def destroy
    @allbk.destroy
    respond_to do |format|
      format.html { redirect_to allbks_url, notice: 'Allbk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allbk
      @allbk = Allbk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allbk_params
      params.require(:allbk).permit(:isbn, :issue)
    end
end
