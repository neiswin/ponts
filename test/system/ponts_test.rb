require "application_system_test_case"

class PontsTest < ApplicationSystemTestCase
  setup do
    @pont = ponts(:one)
  end

  test "visiting the index" do
    visit ponts_url
    assert_selector "h1", text: "Ponts"
  end

  test "should create pont" do
    visit ponts_url
    click_on "New pont"

    fill_in "Body", with: @pont.body
    click_on "Create Pont"

    assert_text "Pont was successfully created"
    click_on "Back"
  end

  test "should update Pont" do
    visit pont_url(@pont)
    click_on "Edit this pont", match: :first

    fill_in "Body", with: @pont.body
    click_on "Update Pont"

    assert_text "Pont was successfully updated"
    click_on "Back"
  end

  test "should destroy Pont" do
    visit pont_url(@pont)
    click_on "Destroy this pont", match: :first

    assert_text "Pont was successfully destroyed"
  end
end
