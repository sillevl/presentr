class Presentation < ActiveRecord::Base
	belongs_to :user
	has_many :slides
	validates :name,  presence: true
end
