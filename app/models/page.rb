class Page < ActiveRecord::Base
has_many :examples
has_many :users

def to_s
	"#{title}"
	end

end
