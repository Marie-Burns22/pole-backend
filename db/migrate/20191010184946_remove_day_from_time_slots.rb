class RemoveDayFromTimeSlots < ActiveRecord::Migration[6.0]
  def change

    remove_column :time_slots, :day, :string
  end
end
