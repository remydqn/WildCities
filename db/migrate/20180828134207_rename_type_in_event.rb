class RenameTypeInEvent < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.rename :type, :event_type
    end
  end
end
