class BookingSerializer
  include FastJsonapi::ObjectSerializer
  
  belongs_to :student
  belongs_to :time_slot, serializer: TimeSlotSerializer
  has_one :course, through: :time_slot, serializer: CourseSerializer
end
