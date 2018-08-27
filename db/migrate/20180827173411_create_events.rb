class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :normal_description
      t.string :address
      t.string :type
      t.integer :wild
      t.string :explained_description
      t.string :tips
      t.boolean :pending
      t.string :city
      t.string :secret_event
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
