class CreateActiveBeers < ActiveRecord::Migration
  def change
    create_table :active_beers do |t|
      t.references :Location, index: true
      t.references :Beer, index: true

      t.timestamps
    end
  end
end
