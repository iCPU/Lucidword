class CreateBeginnings < ActiveRecord::Migration
  def change
    create_table :beginnings do |t|
      t.string :original_author
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end

    add_index :beginnings, [:user_id, :created_at]
  
  end
end
