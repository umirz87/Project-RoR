require "test_helper"

class PhaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phase_index_url
    assert_response :success
  end
end
