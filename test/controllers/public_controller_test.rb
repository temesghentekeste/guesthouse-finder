require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get public_main_url
    assert_response :success
  end

end
