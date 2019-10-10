class AddAmPmToTimeSlots < ActiveRecord::Migration[6.0]
  def change
    add_column :time_slots, :am_pm, :string
  end
end
