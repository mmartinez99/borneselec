require "test_helper"

class MongoidControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mongoid_index_url
    assert_response :success
  end
end
