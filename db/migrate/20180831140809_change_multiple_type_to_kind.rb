class ChangeMultipleTypeToKind < ActiveRecord::Migration[5.2]
  def change
    remove_column :criterias, :drink
    remove_column :criterias, :dance
    add_column :criterias, :kind, :string
  end
end
