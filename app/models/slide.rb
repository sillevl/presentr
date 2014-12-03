class Slide < ActiveRecord::Base
	belongs_to :presentation
	validates :slide_number,  presence: true
	validates :presentation_id,  presence: true
end
