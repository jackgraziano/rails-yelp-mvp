class AddStarsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :stars, :integer
  end
end
