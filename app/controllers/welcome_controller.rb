class WelcomeController < ApplicationController
  def index
  	if user_signed_in?
  		@presentations = Presentation.find_by_id(current_user.id)
  	else
  		@presentations = Presentation.all
  	end
  end
end
