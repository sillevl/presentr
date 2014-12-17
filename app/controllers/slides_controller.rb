class SlidesController < ApplicationController
  before_action :set_slide, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @slides = Slide.all
    respond_with(@slides)
  end

  def show
    respond_with(@slide)
  end

  def new
    @slide = Slide.new
    @slide.presentation = Presentation.find_by_id(params[:id])
    respond_with(@slide)
  end

  def edit
  end

  def create

    @slide = Slide.new(slide_params)
        @slide.save
    respond_with(@slide)
  end

  def update
    @slide.update(slide_params)
@slide.save
     
    respond_with(@slide)
  end

  def destroy
    @slide.destroy
    respond_with(@slide)
  end

  private
    def set_slide
      @slide = Slide.find(params[:id])
    end

    def slide_params
      params.require(:slide).permit(:slide_number, :content, :presentation_id, :image_id ,:slide_name)
    end
end
