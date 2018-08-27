class AddCriteriaToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :picture, :string
    add_reference :users, :criteria, foreign_key: true
    add_column :users, :location, :float
    add_column :users, :name, :string
  end
end
