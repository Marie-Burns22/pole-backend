class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :credits

  has_one :user
    has_many :bookings, serializer: BookingSerializer
    has_many :courses, through: :bookings, serializer: CourseSerializer
    # has_many :comments, serializer: CommentSerializer
end
