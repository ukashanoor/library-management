class StudetsController < ApplicationController
  before_action :set_studet, only: [:show, :edit, :update, :destroy]

  # GET /studets
  # GET /studets.json
  def index
    @studets = Studet.all
  end

  # GET /studets/1
  # GET /studets/1.json
  def show
  end

  # GET /studets/new
  def new
    @studet = Studet.new
  end

  # GET /studets/1/edit
  def edit
  end

  # POST /studets
  # POST /studets.json
  def create
    @studet = Studet.new(studet_params)

    respond_to do |format|
      if @studet.save
        format.html { redirect_to @studet, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @studet }
      else
        format.html { render :new }
        format.json { render json: @studet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studets/1
  # PATCH/PUT /studets/1.json
  def update
    respond_to do |format|
      if @studet.update(studet_params)
        format.html { redirect_to @studet, notice: 'Studet was successfully updated.' }
        format.json { render :show, status: :ok, location: @studet }
      else
        format.html { render :edit }
        format.json { render json: @studet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studets/1
  # DELETE /studets/1.json
  def destroy
    @studet.destroy
    respond_to do |format|
      format.html { redirect_to studets_url, notice: 'Studet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studet
      @studet = Studet.find(params[:sid])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studet_params
      params.require(:studet).permit(:sid, :name, :dob, :year, :branch)
    end
end
