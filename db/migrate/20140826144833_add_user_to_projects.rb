class AddUserToProjects < ActiveRecord::Migration
  def change
  	add_column :projcts, :user_id, :integer
  end
end
