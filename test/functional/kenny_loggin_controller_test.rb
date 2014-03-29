require 'test_helper'

class KennyLogginControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get loggin" do
    get :loggin
    assert_response :success
  end

end
