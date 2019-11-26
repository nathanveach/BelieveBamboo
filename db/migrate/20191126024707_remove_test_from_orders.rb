class RemoveTestFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :test, :string
    remove_column :orders, :testname, :string
  end
end
