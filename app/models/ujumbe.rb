class Ujumbe < ActiveRecord::Base
	belongs_to :user
	acts_as_followable

	
	validates :title, presence: true

end
