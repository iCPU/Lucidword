class AddPositionToComments < ActiveRecord::Migration
  def change

    add_column :comments, :position, :integer

    # terribly inefficient, but it gets the job done.
    Ending.all.each do |ending|
      ending.comments.each_with_index do |comment, index|
        comment.update_attribute :position, index+1
      end
    end
  end
end
