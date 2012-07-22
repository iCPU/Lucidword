class AddEmbedCodeToBeginnings < ActiveRecord::Migration
  def change
    add_column :beginnings, :embed_code, :text
  end
end
