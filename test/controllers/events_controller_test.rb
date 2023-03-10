require 'test_helper'

=begin
Test Case: events controller
=end

class EventsControllerTest < ActionDispatch::IntegrationTest
  #include Devise::Test::IntegrationHelpers
  setup do
    @event = events(:one)
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { evt_code: @event.evt_code, evt_desc: @event.evt_desc, evt_edate: @event.evt_edate, evt_host: @event.evt_host, evt_name: @event.evt_name, evt_sdate: @event.evt_sdate } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
