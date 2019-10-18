class AddMinToTimeSlot < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :min, :integer
  end
end
