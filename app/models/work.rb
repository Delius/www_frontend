class Work < ActiveRecord::Base
	
	belongs_to :project
	belongs_to :user

	validates :project, presence: true
	validates :user, presence: true
	validates :datetimeperformed, presence: true
	validates :hours, numericality: { only_integer: true, greater_than: 0
										less_than_or_equal_to: 8 }
	

	scope :fullday, => { where ("hours >= 8")}
	scope :recent, => {where ( "datetimeperformed > '#{Time.now - 7.days}'")}
end
