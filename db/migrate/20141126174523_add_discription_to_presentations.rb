class AddDiscriptionToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :discription, :string
  end
end
