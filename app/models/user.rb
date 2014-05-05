class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ujumbes
  has_attached_file :image, 
                    :styles => { :medium => "400x400>", :thumb => "100x100>", :mini => "50x50>", :large => "600x600>" }, 
                    :default_url => "/assets/userpic_missing_:style.png", 
                    :url  => "/users/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/users/images/:id/:style/:basename.:extension"
  
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  validates_attachment_size :image, :less_than => 5.megabytes

  has_attached_file :cover, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>", :cover => "1814x489>" }, 
                    :default_url => "/assets/usercover_missing_:style.png", 
                    :url  => "/users/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/users/images/:id/:style/:basename.:extension"
  
  validates_attachment :cover, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] } 
  validates_attachment_size :cover, :less_than => 5.megabytes


  ACTION_AREAS = ["police", "fiscalite", "securite_sociale", "affaires_etrangeres", "armee", "justice", "recherche_scientifique", "amenagement_territoire", "environnement", "logement", "agriculture", "eau_energie", "economie_emploi", "culture", "sport", "education", "creches", "jeunesse"]

  def self.action_areas
    ACTION_AREAS.map do |action_area|
      [I18n.t("action_areas.#{action_area}"), action_area]
    end
  end
end
