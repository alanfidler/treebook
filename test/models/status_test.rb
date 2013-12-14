require 'test_helper'

class StatusTest < ActiveSupport::TestCase
test "that a status requires content" do
	status = Status.new
	assert !status.save
	assert !status.errors[:status].empty?
	end

test "that a status' content is at least 2 letters" do
	status = Status.new
	status.status = "H"
	assert !status.save
	assert !status.errors[:status].empty?
		
end

test "that a status has a user_id" do
	status = Status.new
	status.status = "Hello"
	assert !status.save
	assert !status.errors[:user_id].empty?
end

end
