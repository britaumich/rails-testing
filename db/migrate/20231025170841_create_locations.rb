class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :line_1
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
