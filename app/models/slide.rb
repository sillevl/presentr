class Slide < ActiveRecord::Base
	belongs_to :presentation
	has_one :transistion
	validates :slide_number,  presence: true
	validates :presentation_id,  presence: true
end
