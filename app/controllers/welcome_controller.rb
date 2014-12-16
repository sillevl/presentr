class WelcomeController < ApplicationController
	 skip_before_filter :authenticate_user!
  def index
  	if user_signed_in?
  		@presentations = current_user.presentations
  	else
  		@presentations = Presentation.all
  	end
  end
end
