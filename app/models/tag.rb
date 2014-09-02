class Tag < ActiveRecord::Base

has_many :taggings
has_many :examples, through: :taggings
end
