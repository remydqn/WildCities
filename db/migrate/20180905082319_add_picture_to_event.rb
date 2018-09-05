class AddPictureToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :picture, :string
  end
end
