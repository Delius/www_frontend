class Page < ActiveRecord::Base
has_many :examples
has_many :works

def to_s
		"#{name}"
	end

end
