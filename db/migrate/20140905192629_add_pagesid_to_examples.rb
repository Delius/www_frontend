class AddPagesidToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :page_id, :integer
  end
end
