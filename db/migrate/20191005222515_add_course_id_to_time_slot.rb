class AddCourseIdToTimeSlot < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :course_id, :bigint
  end
end
