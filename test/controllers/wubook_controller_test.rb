require 'test_helper'

class WubookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wubook_index_url
    assert_response :success
  end

end
