class AddSlideNameToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :slide_name, :string
  end
end
