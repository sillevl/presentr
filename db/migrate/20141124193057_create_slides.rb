class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :slide_number
      t.string :content
      t.integer :presentation_id

      t.timestamps
    end
  end
end
