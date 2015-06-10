class AddDestPortToSalesOrders < ActiveRecord::Migration
  def change
    add_column :sales_orders, :dest_port, :string
    add_column :sales_orders, :string, :string
  end
end
