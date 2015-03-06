require 'test_helper'

class ShareControllerTest < ActionController::TestCase
  test "should get navbar" do
    get :navbar
    assert_response :success
  end

end
