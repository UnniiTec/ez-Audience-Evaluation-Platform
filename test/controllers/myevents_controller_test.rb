require 'test_helper'

=begin
Test Case: Events enrollment controller
=end

class MyeventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myevent = myevents(:one)
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should get index" do
    get myevents_url
    assert_response :success
  end

  test "should get new" do
    get new_myevent_url
    assert_response :success
  end

  test "should show myevent" do
    get myevent_url(@myevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_myevent_url(@myevent)
    assert_response :success
  end

  test "should destroy myevent" do
    assert_difference('Myevent.count', -1) do
      delete myevent_url(@myevent)
    end

    assert_redirected_to events_url
  end
end
