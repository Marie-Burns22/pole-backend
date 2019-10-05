class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.date :date
      t.time :time
      t.string :day

      t.timestamps
    end
  end
end
