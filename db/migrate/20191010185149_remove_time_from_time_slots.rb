class RemoveTimeFromTimeSlots < ActiveRecord::Migration[6.0]
  def change

    remove_column :time_slots, :time, :time
  end
end
