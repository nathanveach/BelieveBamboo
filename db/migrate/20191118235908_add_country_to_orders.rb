class AddCountryToOrders < ActiveRecord::Migration[5.2]
  def change
    
  	add_column :orders, :first_name, :string
  	add_column :orders, :last_name, :string
  	add_column :orders, :street_address, :string
  	add_column :orders, :optional, :string
  	add_column :orders, :state, :string
  	add_column :orders, :zip, :string
  	add_column :orders, :country, :string
  	add_column :orders, :city, :string
  end
end
