require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url, as: :json
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { course_id: @booking.course_id, time_slot_id: @booking.time_slot_id, user_id: @booking.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show booking" do
    get booking_url(@booking), as: :json
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { course_id: @booking.course_id, time_slot_id: @booking.time_slot_id, user_id: @booking.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking), as: :json
    end

    assert_response 204
  end
end
