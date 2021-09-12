require "test_helper"

class LeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get newlead" do
    get leads_newlead_url
    assert_response :success
  end
end
