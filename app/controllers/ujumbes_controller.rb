class UjumbesController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  before_action :set_ujumbe, only: [:show, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]

  # GET /ujumbes
  # GET /ujumbes.json
  def index
    @ujumbes = Ujumbe.all.order('id DESC')
    @ujumbe = current_user.ujumbes.build if current_user
    @user = current_user
  end

  # GET /ujumbes/1
  # GET /ujumbes/1.json
  def show
    @user = current_user
  end

  # GET /ujumbes/new
  def new
    @ujumbe = current_user.ujumbes.build
    @user = current_user
  end

  # GET /ujumbes/1/edit
  def edit
    @user = current_user
  end

  # POST /ujumbes
  # POST /ujumbes.json
  def create
    @ujumbe = current_user.ujumbes.build(ujumbe_params)
    @user = current_user

    respond_to do |format|
      if @ujumbe.save
        format.html { redirect_to edit_ujumbe_path(@ujumbe), notice: 'Ujumbe was successfully created. You can now complete it' }
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
    @user = current_user
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

    def correct_user
      @ujumbe = current_user.ujumbes.find_by(id: params[:id])
      redirect_to ujumbes_path, notice: t("Vous ne pouvez pas modifier cela") if @ujumbe.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ujumbe_params
      params.require(:ujumbe).permit(:title, :theme, :date, :description, :link, :type, :private,
                                     :what, :why, :how, :budget, :funding,
                                     :theme_ressources, :theme_education, :theme_housing, :theme_environnement, :theme_culture, :theme_economy, :theme_social, :theme_security, :theme_scientific, :theme_foreign)
    end
end


