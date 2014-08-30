class Technology < ActiveRecord::Base
 has_many :examples
 has_many :users

 	def to_s
		name
	end
end
