class BksController < ApplicationController
  before_action :set_bk, only: [:show, :edit, :update, :destroy]

  # GET /bks
  # GET /bks.json
  def index
    @bks = Bk.all
  end

  # GET /bks/1
  # GET /bks/1.json
  def show
  end

  # GET /bks/new
  def new
    @bk = Bk.new
  end

  # GET /bks/1/edit
  def edit
  end

  # POST /bks
  # POST /bks.json
  def create
    @bk = Bk.new(bk_params)

    respond_to do |format|
      if @bk.save
        format.html { redirect_to @bk, notice: 'Bk was successfully created.' }
        format.json { render :show, status: :created, location: @bk }
      else
        format.html { render :new }
        format.json { render json: @bk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bks/1
  # PATCH/PUT /bks/1.json
  def update
    respond_to do |format|
      if @bk.update(bk_params)
        format.html { redirect_to @bk, notice: 'Bk was successfully updated.' }
        format.json { render :show, status: :ok, location: @bk }
      else
        format.html { render :edit }
        format.json { render json: @bk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bks/1
  # DELETE /bks/1.json
  def destroy
    @bk.destroy
    respond_to do |format|
      format.html { redirect_to bks_url, notice: 'Bk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bk
      @bk = Bk.find(params[:isbn])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bk_params
      params.require(:bk).permit(:isbn, :author, :title, :publication, :copies, :available, :subject)
    end
end
