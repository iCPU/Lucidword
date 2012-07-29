class CreateEndings < ActiveRecord::Migration
  def change
    create_table :endings do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :beginning_id

      t.timestamps
    end

    add_index :endings, [:user_id, :beginning_id, :created_at]


  end
end
