class User < ActiveRecord::Base
	belongs_to :company
	has_many :works
	has_many :projects, :through => :works

	validates :fname, lenght: { minimum: 2 }
	validates :lname, lenght: { minimum: 2 }
	validates :company, presence: true
	
end
