class Presentation < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :slides
	validates :name,  presence: true
end
