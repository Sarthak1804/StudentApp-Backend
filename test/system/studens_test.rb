require "application_system_test_case"

class StudensTest < ApplicationSystemTestCase
  setup do
    @studen = studens(:one)
  end

  test "visiting the index" do
    visit studens_url
    assert_selector "h1", text: "Studens"
  end

  test "creating a Studen" do
    visit studens_url
    click_on "New Studen"

    fill_in "Email", with: @studen.email
    fill_in "Name", with: @studen.name
    click_on "Create Studen"

    assert_text "Studen was successfully created"
    click_on "Back"
  end

  test "updating a Studen" do
    visit studens_url
    click_on "Edit", match: :first

    fill_in "Email", with: @studen.email
    fill_in "Name", with: @studen.name
    click_on "Update Studen"

    assert_text "Studen was successfully updated"
    click_on "Back"
  end

  test "destroying a Studen" do
    visit studens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studen was successfully destroyed"
  end
end
