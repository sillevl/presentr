class Course < ActiveRecord::Base
	has_many :presentations
	belongs_to :user
	validates :name,  presence: true
end
