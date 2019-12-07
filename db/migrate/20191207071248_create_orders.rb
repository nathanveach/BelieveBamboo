class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :sub_total, precision: 15, scale: 2, null: false
      t.string :status, default: "cart"
      t.string :stripeToken
      t.string :token
      t.string :cardname
      t.bigint :customer_id
      t.timestamps
    end
  end
end
