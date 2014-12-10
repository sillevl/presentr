class AddCourseIdToPresentations < ActiveRecord::Migration
  def change
    add_reference :presentations, :course, index: true
  end
end
