class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :ending_id
      t.text :content
      t.string :name
      t.string :email
      t.string :site_url
      t.string :user_ip
      t.string :user_agent
      t.string :referrer

      t.timestamps
    end

   add_index :comments, [:user_id, :ending_id, :created_at]


  end
end
