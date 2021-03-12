require "test_helper"

class StudensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studen = studens(:one)
  end

  test "should get index" do
    get studens_url
    assert_response :success
  end

  test "should get new" do
    get new_studen_url
    assert_response :success
  end

  test "should create studen" do
    assert_difference('Studen.count') do
      post studens_url, params: { studen: { email: @studen.email, name: @studen.name } }
    end

    assert_redirected_to studen_url(Studen.last)
  end

  test "should show studen" do
    get studen_url(@studen)
    assert_response :success
  end

  test "should get edit" do
    get edit_studen_url(@studen)
    assert_response :success
  end

  test "should update studen" do
    patch studen_url(@studen), params: { studen: { email: @studen.email, name: @studen.name } }
    assert_redirected_to studen_url(@studen)
  end

  test "should destroy studen" do
    assert_difference('Studen.count', -1) do
      delete studen_url(@studen)
    end

    assert_redirected_to studens_url
  end
end
