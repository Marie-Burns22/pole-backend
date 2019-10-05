class TimeSlot < ApplicationRecord
    belongs_to :course
    has_one :booking
end
