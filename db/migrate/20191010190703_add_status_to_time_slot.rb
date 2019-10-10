class AddStatusToTimeSlot < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :status, :string
  end
end
