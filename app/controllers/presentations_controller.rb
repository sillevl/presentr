class PresentationsController < ApplicationController
  before_action :set_presentation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @presentations = Presentation.all
    respond_with(@presentations)
  end

  def show
    respond_with(@presentation)
  end

  def new
    @presentation = Presentation.new
    respond_with(@presentation)
  end

  def edit
  end

  def create
    @presentation = Presentation.new(presentation_params)
    @presentation.save
    respond_with(@presentation)
  end

  def update
    @presentation.update(presentation_params)
    respond_with(@presentation)
  end

  def destroy
    @presentation.destroy
    respond_with(@presentation)
  end

  private
    def set_presentation
      @presentation = Presentation.find(params[:id])
    end

    def presentation_params
      params.require(:presentation).permit(:name, :user)
    end
end
