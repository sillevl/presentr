class AddThemeIdToPresentations < ActiveRecord::Migration
  def change
    add_reference :presentations, :theme, index: true
  end
end
