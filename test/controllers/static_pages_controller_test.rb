require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root URL" do
    get root_url
    assert_response :success
  end

end
