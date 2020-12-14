require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "creating a Booking" do
    visit bookings_url
    click_on "New Booking"

    fill_in "Date of birth", with: @booking.date_of_birth
    fill_in "Flight number", with: @booking.flight_number
    fill_in "Name", with: @booking.name
    fill_in "Phone number", with: @booking.phone_number
    fill_in "Seat", with: @booking.seat
    fill_in "User", with: @booking.user_id
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "updating a Booking" do
    visit bookings_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @booking.date_of_birth
    fill_in "Flight number", with: @booking.flight_number
    fill_in "Name", with: @booking.name
    fill_in "Phone number", with: @booking.phone_number
    fill_in "Seat", with: @booking.seat
    fill_in "User", with: @booking.user_id
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking" do
    visit bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking was successfully destroyed"
  end
end
