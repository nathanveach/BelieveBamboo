class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email, null: false
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :address, null: false
      t.string :optional
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :zip, null: false
      t.bigint :order_id, null: false
      t.timestamps
    end
  end
end
