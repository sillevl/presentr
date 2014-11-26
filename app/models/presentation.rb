class Presentation < ActiveRecord::Base
	belongs_to :user
	has_many :slides
	validates :user,  presence: true
	validates :name,  presence: true
end
