require "application_system_test_case"

class CarParksTest < ApplicationSystemTestCase
  setup do
    @car_park = car_parks(:one)
  end

  test "visiting the index" do
    visit car_parks_url
    assert_selector "h1", text: "Car Parks"
  end

  test "creating a Car park" do
    visit car_parks_url
    click_on "New Car Park"

    click_on "Create Car park"

    assert_text "Car park was successfully created"
    click_on "Back"
  end

  test "updating a Car park" do
    visit car_parks_url
    click_on "Edit", match: :first

    click_on "Update Car park"

    assert_text "Car park was successfully updated"
    click_on "Back"
  end

  test "destroying a Car park" do
    visit car_parks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car park was successfully destroyed"
  end
end
