class AddConfirmedToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :confirmed, :boolean, default: false
  end
end
