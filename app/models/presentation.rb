class Presentation < ActiveRecord::Base

	has_many :slides
	validates :user,  presence: true
	validates :name,  presence: true
end
