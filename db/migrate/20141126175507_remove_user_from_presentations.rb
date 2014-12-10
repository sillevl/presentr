class RemoveUserFromPresentations < ActiveRecord::Migration
  def change
    remove_column :presentations, :user
  end
end
