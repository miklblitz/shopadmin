require "application_system_test_case"

class RazdelsTest < ApplicationSystemTestCase
  setup do
    @razdel = razdels(:one)
  end

  test "visiting the index" do
    visit razdels_url
    assert_selector "h1", text: "Razdels"
  end

  test "creating a Razdel" do
    visit razdels_url
    click_on "New Razdel"

    fill_in "Name", with: @razdel.name
    click_on "Create Razdel"

    assert_text "Razdel was successfully created"
    click_on "Back"
  end

  test "updating a Razdel" do
    visit razdels_url
    click_on "Edit", match: :first

    fill_in "Name", with: @razdel.name
    click_on "Update Razdel"

    assert_text "Razdel was successfully updated"
    click_on "Back"
  end

  test "destroying a Razdel" do
    visit razdels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Razdel was successfully destroyed"
  end
end
