class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :size, :location, :description

  # has_many :time_slots, serializer: TimeSlotSerializer
  # has_many :bookings, through: :time_slots, serializer: BookingSerializer
  # has_and_belongs_to_many :students, serializer: StudentSerializer
end
