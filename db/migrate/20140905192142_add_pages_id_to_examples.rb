class AddPagesIdToExamples < ActiveRecord::Migration
  def change
  	add_column :examples, :company_id, :integer
  end
end
