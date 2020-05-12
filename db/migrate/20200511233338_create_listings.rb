class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.integer :sale_type
      t.integer :size
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
