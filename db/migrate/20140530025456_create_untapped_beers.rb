class CreateUntappedBeers < ActiveRecord::Migration
  def change
    create_table :untapped_beers do |t|
      t.string :beer_style
      t.decimal :rating_score
      t.string :description
      t.integer :untapped_id
      t.date :updated

      t.timestamps
    end
  end
end
