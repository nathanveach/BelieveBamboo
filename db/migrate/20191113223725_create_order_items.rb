class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.bigint :order_id, null: false
      t.bigint :product_id, null: false
      t.integer :quantity, null: false
      t.decimal :price, precision: 15, scale: 2, null: false

      t.timestamps
    end
  end
end
