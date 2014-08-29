class Technology < ActiveRecord::Base
 has_many :examples
 has_many :users
end
