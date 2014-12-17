class Slide < ActiveRecord::Base
	belongs_to :presentation
	has_one :transistion
	has_many :images
	accepts_nested_attributes_for :images
	validates :slide_number,  presence: true
	#validates :presentation_id,  presence: true
end
