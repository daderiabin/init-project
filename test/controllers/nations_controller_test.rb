require 'test_helper'

class NationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nations_index_url
    assert_response :success
  end

  test "should get show" do
    get nations_show_url
    assert_response :success
  end

end
