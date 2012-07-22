class AddStyleTypeToBeginnings < ActiveRecord::Migration
  def change
    add_column :beginnings, :style_type, :string
  end
end
