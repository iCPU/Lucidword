class AddPrivateToEnding < ActiveRecord::Migration
  def change
    add_column :endings, :private, :boolean, :default => true, :null => true
  end
end
