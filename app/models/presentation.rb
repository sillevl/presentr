class Presentation < ActiveRecord::Base
	belongs_to :user
	has_many :slides
	has_one :theme
	validates :name,  presence: true
end
