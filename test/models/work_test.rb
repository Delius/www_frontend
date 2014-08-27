require 'test_helper'

class WorkTest < ActiveSupport::TestCase
test "work should not save with no assotiated user"  do
	work = Work.first
	assert work.valid?, "work should be valid"
	work.user.id = nil
	assert_not work.valid?, "work should be valid"	
end
end
