class RemoveCityFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :first_name, :string
    remove_column :orders, :last_name, :string
    remove_column :orders, :street_address, :string
    remove_column :orders, :optional, :string
    remove_column :orders, :city, :string
    remove_column :orders, :state, :string
    remove_column :orders, :country, :string
    remove_column :orders, :zip, :string
  end
end

