class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :name
      t.integer :date
      t.boolean :accepted
      t.references :user, foreign_key: true
      t.boolean :completed
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
