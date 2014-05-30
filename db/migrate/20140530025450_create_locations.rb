class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :url
      t.string :parser

      t.timestamps
    end
  end
end
