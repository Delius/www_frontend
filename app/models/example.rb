class Example < ActiveRecord::Base
	belongs_to :technology
	belongs_to :user

	def to_s
		"#{name}"
	end

end
