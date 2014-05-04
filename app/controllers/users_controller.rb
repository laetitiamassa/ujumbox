class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @ujumbes = @user.ujumbes.order('id DESC')
    @ujumbe = current_user.ujumbes.build if current_user
  end

  def edit
    @user = current_user
    @action_areas = User.action_areas
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "Votre profil a bien ete mis a jour"
    else
      render action: "edit", notice: "Oups, veuillez reessayer"
    end
  end

  def user_params
    params.require(:user).permit(:email, :name, :title, :career, :action_area, :achievements, :profession, :party, :party_short, :birth_date, :birth_place, :residency, :image, :cover, 
                                 :theme_ressources, :theme_education, :theme_housing, :theme_environnement, :theme_culture, :theme_economy, :theme_social, :theme_security, :theme_scientific, :theme_foreign,
                                 :facebook_url, :linkedin_url, :twitter_url, :website_url)
  end

  def markdown(content)
    markdown =Redcarpet::Markdown.new(Redcarpet::Render::XHTML,:hard_wrap=>true,:filter_html=>true,:autolink=>true,:no_intra_emphasis=>true)
    markdown.render(content).html_safe
  end

end
