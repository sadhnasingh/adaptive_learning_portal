require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get answers_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_url
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post answers_url, params: { answer: { check1: @answer.check1, check2: @answer.check2, check3: @answer.check3, check4: @answer.check4, option1: @answer.option1, option2: @answer.option2, option3: @answer.option3, option4: @answer.option4, question_id: @answer.question_id, skip: @answer.skip } }
    end

    assert_redirected_to answer_url(Answer.last)
  end

  test "should show answer" do
    get answer_url(@answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_url(@answer)
    assert_response :success
  end

  test "should update answer" do
    patch answer_url(@answer), params: { answer: { check1: @answer.check1, check2: @answer.check2, check3: @answer.check3, check4: @answer.check4, option1: @answer.option1, option2: @answer.option2, option3: @answer.option3, option4: @answer.option4, question_id: @answer.question_id, skip: @answer.skip } }
    assert_redirected_to answer_url(@answer)
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete answer_url(@answer)
    end

    assert_redirected_to answers_url
  end
end
