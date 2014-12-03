class CreateTransistions < ActiveRecord::Migration
  def change
    create_table :transistions do |t|
      t.string :name
      t.text :code

      t.timestamps
    end
  end
end
