class Presentation < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :slides
	has_one :theme
	validates :name,  presence: true
end
