class AddWildnessToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :wildness, :integer
  end
end
