require 'test_helper'

=begin
Test Case: presentation grades controller
=end

class PgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pgrade = pgrades(:one)
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should get new" do
    get new_pgrade_url
    assert_response :success
  end

  test "should get edit" do
    get edit_pgrade_url(@pgrade)
    assert_response :success
  end

  test "should destroy pgrade" do
    assert_difference('Pgrade.count', -1) do
      delete pgrade_url(@pgrade)
    end

    assert_redirected_to pgrades_url
  end
end
