require "application_system_test_case"

class CollegeStudentsTest < ApplicationSystemTestCase
  setup do
    @college_student = college_students(:one)
  end

  test "visiting the index" do
    visit college_students_url
    assert_selector "h1", text: "College Students"
  end

  test "creating a College student" do
    visit college_students_url
    click_on "New College Student"

    fill_in "Email", with: @college_student.email
    fill_in "Name", with: @college_student.name
    click_on "Create College student"

    assert_text "College student was successfully created"
    click_on "Back"
  end

  test "updating a College student" do
    visit college_students_url
    click_on "Edit", match: :first

    fill_in "Email", with: @college_student.email
    fill_in "Name", with: @college_student.name
    click_on "Update College student"

    assert_text "College student was successfully updated"
    click_on "Back"
  end

  test "destroying a College student" do
    visit college_students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "College student was successfully destroyed"
  end
end
