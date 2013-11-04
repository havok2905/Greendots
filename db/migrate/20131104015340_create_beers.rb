class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.integer :year
      t.string :style
      t.integer :rating

      t.timestamps
    end
  end
end
