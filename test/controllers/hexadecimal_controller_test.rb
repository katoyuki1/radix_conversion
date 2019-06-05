require 'test_helper'

class HexadecimalControllerTest < ActionDispatch::IntegrationTest
  test "should get s" do
    get hexadecimal_s_url
    assert_response :success
  end

  test "should get question" do
    get hexadecimal_question_url
    assert_response :success
  end

end
