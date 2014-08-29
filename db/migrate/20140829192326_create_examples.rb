class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
    	t.string :name
    	t.integer :technology_id
    	t.string :www_link
    	t.string :code_link
    	t.text :description
      t.timestamps
    end
  end
end
