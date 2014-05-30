class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :brewery
      t.string :name
      t.string :style
      t.string :price
      t.decimal :abv
      t.references :Untapped_Beer, index: true

      t.timestamps
    end
  end
end
