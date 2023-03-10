require 'test_helper'

=begin
Test Case: presentation speaker controller
=end
class MyprestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myprest = myprests(:one)
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
  end

  test "should show myprest" do
    get myprest_url(@myprest)
    assert_response :success
  end

  test "should destroy myprest" do
    assert_difference('Myprest.count', -1) do
      delete myprest_url(@myprest)
    end

    assert_redirected_to myprests_url
  end
end
