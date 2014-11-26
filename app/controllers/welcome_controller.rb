class WelcomeController < ApplicationController
  def index
  	@presentations = Presentation.all
  end
end
