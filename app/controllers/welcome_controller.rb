class WelcomeController < ApplicationController
  def index
  	@courses = Course.all
  	@presentations = Presentation.all
  end
end
