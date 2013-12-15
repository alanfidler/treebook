require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
test "that /signin route opens the login page" do
	get '/signin'
	assert_response :success
end


test "that /signout route opens the login page" do
	get '/signout'
	assert_response :redirect
end

test "that a profile page works" do
	get '/alan'
	assert_response :success
end

end
