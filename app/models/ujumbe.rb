class Ujumbe < ActiveRecord::Base
	belongs_to :user
	has_many :acts, :dependent => :destroy
	accepts_nested_attributes_for :acts
	 
	acts_as_followable

	has_attached_file :image, 
                    :styles => { :medium => "400x400#", :thumb => "100x100#", :mini => "50x50#", :large => "600x600#" }, 
                    :default_url => "logo_ujumbox.png"

	
	validates :title, presence: true

	def politic
		user.is_politic?
	end

	def civil
		!politic
	end

end
