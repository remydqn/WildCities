class RenameTableCriteriaToCriterias < ActiveRecord::Migration[5.2]
  def change
    rename_table :criteria, :criterias
  end
end
