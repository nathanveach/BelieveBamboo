class RemoveNameFromOrders < ActiveRecord::Migration[5.2]
  def change
  	remove_column :orders, :name
  	remove_column :orders, :address

  end
end
