class Work < ActiveRecord::Base
	belongs_to :project
	belongs_to :user

	scope :fullday, => { where ("hours >= 8")}
end
