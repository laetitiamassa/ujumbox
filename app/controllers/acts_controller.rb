class ActsController < ApplicationController
  before_action :set_act, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :correct_user, :only => [:edit, :update]

  # GET /acts
  # GET /acts.json
  def index
    @acts = Act.all
  end

  # GET /acts/1
  # GET /acts/1.json
  def show
  end

  # GET /acts/new
  def new
    @act = current_user.acts.build
    @user = current_user
  end

  # GET /acts/1/edit
  def edit
  end

  # POST /acts
  # POST /acts.json
  def create
    @act = current_user.acts.build(act_params)
    @user = current_user

    respond_to do |format|
      if @act.save
        format.html { redirect_to ujumbe_path(@ujumbe), notice: 'Act was successfully created.' }
        format.json { render action: 'show', status: :created, location: @act }
      else
        format.html { render action: 'new' }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acts/1
  # PATCH/PUT /acts/1.json
  def update
    respond_to do |format|
      if @act.update(act_params)
        format.html { redirect_to @act, notice: 'Act was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acts/1
  # DELETE /acts/1.json
  def destroy
    @act.destroy
    respond_to do |format|
      format.html { redirect_to acts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act
      @act = Act.find(params[:id])
    end

    def correct_user
      @act = current_user.acts.find_by(id: params[:id])
      redirect_to acts_path, notice: t("Vous ne pouvez pas modifier cela") if @act.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_params
      params.require(:act).permit(:title, :description, :date, :subject, :details)
    end
end
