class WelcomeController < ApplicationController
  def index
  	if user_signed_in?
  		@courses = current_user.courses
  		@presentations = current_user.presentations
  	else
  		@courses = Course.all
  		@presentations = Presentation.all
  	end
  end
end
