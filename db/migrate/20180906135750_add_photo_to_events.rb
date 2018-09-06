class AddPhotoToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :photos, :string, array: true
  end
end
