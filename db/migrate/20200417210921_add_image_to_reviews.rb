class AddImageToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :image, :string
    add_column :reviews, :avatar, :string
  end
end
