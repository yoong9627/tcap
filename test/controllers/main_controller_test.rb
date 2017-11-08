require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get timecapsule" do
    get :timecapsule
    assert_response :success
  end

  test "should get userdiary" do
    get :userdiary
    assert_response :success
  end

end
