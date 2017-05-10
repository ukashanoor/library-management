class IssusController < ApplicationController
  before_action :set_issu, only: [:show, :edit, :update, :destroy]

  # GET /issus
  # GET /issus.json
  def index
    @issus = Issu.all
  end

  # GET /issus/1
  # GET /issus/1.json
  def show
  end

  # GET /issus/new
  def new
    @issu = Issu.new
  end

  # GET /issus/1/edit
  def edit
  end

  # POST /issus
  # POST /issus.json
  def create
    @issu = Issu.new(issu_params)

    respond_to do |format|
      if @issu.save
        format.html { redirect_to @issu, notice: 'Issu was successfully created.' }
        format.json { render :show, status: :created, location: @issu }
      else
        format.html { render :new }
        format.json { render json: @issu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issus/1
  # PATCH/PUT /issus/1.json
  def update
    respond_to do |format|
      if @issu.update(issu_params)
        format.html { redirect_to @issu, notice: 'Issu was successfully updated.' }
        format.json { render :show, status: :ok, location: @issu }
      else
        format.html { render :edit }
        format.json { render json: @issu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issus/1
  # DELETE /issus/1.json
  def destroy
    @issu.destroy
    respond_to do |format|
      format.html { redirect_to issus_url, notice: 'Issu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issu
      @issu = Issu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issu_params
      params.require(:issu).permit(:sid, :allbk_id, :issue_date, :return_date)
    end
end
