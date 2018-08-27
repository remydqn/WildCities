class CreateCriteria < ActiveRecord::Migration[5.2]
  def change
    create_table :criteria do |t|
      t.boolean :drink
      t.boolean :dance
      t.boolean :culture
      t.integer :wild

      t.timestamps
    end
  end
end
