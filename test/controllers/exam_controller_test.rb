require 'test_helper'

class ExamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_index_url
    assert_response :success
  end

end
