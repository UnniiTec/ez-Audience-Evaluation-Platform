# The following test cases are run by selenium, which imitate some possible user behaviors.
# The test case names clearly tells what the test case will do.
require "application_system_test_case"

=begin
System Comprehensive Test
=end
class UserssTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  # Test cases begins here.
  test "visiting the index" do
    visit new_user_session_url
    assert_selector "h2", text: "Log in"
  end

  test "create wrong session" do
    visit new_user_session_url

    fill_in "user_email", with: "j@h.com"
    fill_in "user_password", with: "wrong_psw"
    click_on "Log in"

    assert_text "Invalid Email or password."
  end

  test "sign up" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."
  end

  test "sign up failure" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "akjgr"
    fill_in "user_last_name", with: "afrver"
    fill_in "user_email", with: "a@b.com"
    fill_in "user_password", with: "111"
    fill_in "user_password_confirmation", with: "111"
    click_on "Sign up"

    assert_selector "h2", text: "1 error prohibited this user from being saved:"
  end

  test "sign up then click Events" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Events"
    assert_selector "h1", text: "Public Events - Free to JOIN!"
    
  end

  test "sign up then click My Events" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "My Events"
    assert_selector "h1", text: "My Attended Events"
    
  end  

  test "sign up then click My Presentations" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "My Presentations"
    assert_selector "h1", text: "My Presentations"
    
  end 


  test "sign up then click TODOs" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "TODOs"
    assert_selector "h1", text: "My Todo Evaluations"
    
  end 

  test "sign up then click Setting" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Setting"
    assert_selector "h2", text: "Edit User Profile"
    
  end 
  

  test "sign up then click Sign Out" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Mike"
    fill_in "user_last_name", with: "Green"
    fill_in "user_email", with: "mike@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Sign Out"
    assert_text "Signed out successfully."
    
  end 

  test "sign up as admin and create new event" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "John"
    fill_in "user_last_name", with: "Lee"
    fill_in "user_email", with: "Lee123@gmail.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    choose "user_admin_true"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Events"
    assert_selector "h1", text: "My Published Events"

    click_on "New Event"
    assert_selector "h1", text: "New Event"

    fill_in "event_evt_name", with: "test event"
    fill_in "event_evt_host", with: "test host"
    choose "event_evt_public_true"
    click_on "Create Event"
    assert_text "Event was successfully created."

  end

  test "sign up as admin and create new event 2" do
    visit new_user_registration_url

    fill_in "user_first_name", with: "Peter"
    fill_in "user_last_name", with: "Smith"
    fill_in "user_email", with: "smith123456@yahoo.com"
    fill_in "user_password", with: "111111"
    fill_in "user_password_confirmation", with: "111111"
    choose "user_admin_true"
    click_on "Sign up"

    assert_text "Welcome! You have signed up successfully."

    click_on "Events"
    assert_selector "h1", text: "My Published Events"

    click_on "New Event"
    assert_selector "h1", text: "New Event"

    fill_in "event_evt_name", with: "test event 2"
    fill_in "event_evt_host", with: "test host 2"
    choose "event_evt_public_true"
    click_on "Create Event"
    assert_text "Event was successfully created."

  end

end
