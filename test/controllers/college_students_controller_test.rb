require "test_helper"

class CollegeStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @college_student = college_students(:one)
  end

  test "should get index" do
    get college_students_url
    assert_response :success
  end

  test "should get new" do
    get new_college_student_url
    assert_response :success
  end

  test "should create college_student" do
    assert_difference('CollegeStudent.count') do
      post college_students_url, params: { college_student: { email: @college_student.email, name: @college_student.name } }
    end

    assert_redirected_to college_student_url(CollegeStudent.last)
  end

  test "should show college_student" do
    get college_student_url(@college_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_college_student_url(@college_student)
    assert_response :success
  end

  test "should update college_student" do
    patch college_student_url(@college_student), params: { college_student: { email: @college_student.email, name: @college_student.name } }
    assert_redirected_to college_student_url(@college_student)
  end

  test "should destroy college_student" do
    assert_difference('CollegeStudent.count', -1) do
      delete college_student_url(@college_student)
    end

    assert_redirected_to college_students_url
  end
end
