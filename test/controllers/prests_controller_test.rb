require 'test_helper'

=begin
Test Case: presentation controller
=end
class PrestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prest = prests(:one)
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should get new" do
    get new_prest_url
    assert_response :success
  end

  test "should get edit" do
    get edit_prest_url(@prest)
    assert_response :success
  end

  test "should destroy prest" do
    assert_difference('Prest.count', -1) do
      delete prest_url(@prest)
    end

    assert_redirected_to prests_url
  end
end
