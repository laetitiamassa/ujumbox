class UjumbesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_ujumbe, only: [:show, :edit, :update, :destroy]

  # GET /ujumbes
  # GET /ujumbes.json
  def index
    @ujumbes = Ujumbe.all
  end

  # GET /ujumbes/1
  # GET /ujumbes/1.json
  def show
  end

  # GET /ujumbes/new
  def new
    @ujumbe = Ujumbe.new
  end

  # GET /ujumbes/1/edit
  def edit
  end

  # POST /ujumbes
  # POST /ujumbes.json
  def create
    @ujumbe = Ujumbe.new(ujumbe_params)

    respond_to do |format|
      if @ujumbe.save
        format.html { redirect_to @ujumbe, notice: 'Ujumbe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ujumbe }
      else
        format.html { render action: 'new' }
        format.json { render json: @ujumbe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ujumbes/1
  # PATCH/PUT /ujumbes/1.json
  def update
    respond_to do |format|
      if @ujumbe.update(ujumbe_params)
        format.html { redirect_to @ujumbe, notice: 'Ujumbe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ujumbe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ujumbes/1
  # DELETE /ujumbes/1.json
  def destroy
    @ujumbe.destroy
    respond_to do |format|
      format.html { redirect_to ujumbes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ujumbe
      @ujumbe = Ujumbe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ujumbe_params
      params.require(:ujumbe).permit(:title, :theme, :date, :description, :link, :type, :private)
    end
end
