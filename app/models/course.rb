class Course < ApplicationRecord
    has_many :time_slots
    has_many :bookings, through: :time_slots
    has_and_belongs_to_many :students
end
