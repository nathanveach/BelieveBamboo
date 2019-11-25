class RemoveEmailFromOrders < ActiveRecord::Migration[5.2]
  def change

  	remove_column :orders, :email
  	remove_column :orders, :first_name
  	remove_column :orders, :last_name
  	remove_column :orders, :street_address
  	remove_column :orders, :optional
  	remove_column :orders, :city
  	remove_column :orders, :state
  	remove_column :orders, :zip
  	remove_column :orders, :country
  end
end
