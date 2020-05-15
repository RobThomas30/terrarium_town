class AddRatingToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :rating, :integer
  end
end
