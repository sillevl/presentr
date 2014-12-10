class AddTransistionsIdToSlides < ActiveRecord::Migration
  def change
    add_reference :slides, :transistion, index: true
  end
end
