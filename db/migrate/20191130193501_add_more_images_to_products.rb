class AddMoreImagesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image2, :string
    add_column :products, :image3, :string
  end
end
