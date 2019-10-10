class RemoveCourseIdFromTimeSlots < ActiveRecord::Migration[6.0]
  def change

    remove_column :time_slots, :course_id, :bigint
  end
end
