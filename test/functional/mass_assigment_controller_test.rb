require 'test_helper'

class MassAssigmentControllerTest < ActionController::TestCase
  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
