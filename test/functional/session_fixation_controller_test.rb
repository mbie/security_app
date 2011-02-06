require 'test_helper'

class SessionFixationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get change_session_id" do
    get :change_session_id
    assert_response :success
  end

end
