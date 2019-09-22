require 'test_helper'

class LogControllerTest < ActionDispatch::IntegrationTest
  test "should get start_time" do
    get log_start_time_url
    assert_response :success
  end

  test "should get end_time" do
    get log_end_time_url
    assert_response :success
  end

  test "should get total_time" do
    get log_total_time_url
    assert_response :success
  end

  test "should get new" do
    get log_new_url
    assert_response :success
  end

  test "should get cleate" do
    get log_cleate_url
    assert_response :success
  end

  test "should get update" do
    get log_update_url
    assert_response :success
  end

  test "should get destroy" do
    get log_destroy_url
    assert_response :success
  end

end
