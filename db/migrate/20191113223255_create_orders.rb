class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.decimal :sub_total, precision: 15, scale: 2, null: false
      t.string :status, default: "cart"
      t.string :stripeToken

      t.timestamps
    end
  end
end
