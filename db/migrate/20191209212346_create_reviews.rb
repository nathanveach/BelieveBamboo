class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.string :country
      t.text :comments
      t.bigint :product_id

      t.timestamps
    end
  end
end
