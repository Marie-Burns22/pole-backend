class AddTimeToTimeSlots < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :time, :integer
  end
end
