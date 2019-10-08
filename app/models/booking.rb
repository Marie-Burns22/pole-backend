class Booking < ApplicationRecord
  belongs_to :student
  belongs_to :time_slot
  has_one :course, through: :time_slot;

end
