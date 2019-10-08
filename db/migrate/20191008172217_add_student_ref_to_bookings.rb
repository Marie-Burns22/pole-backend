class AddStudentRefToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :student, null: false, foreign_key: true
  end
end
