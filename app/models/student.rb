class Student < ApplicationRecord
    has_one :user
    has_many :bookings
    has_many :courses, through: :bookings
    # has_many :comments
end
