class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.string   :due_date
      t.string   :bill_to
      t.string   :requestor_name
      t.string   :title
      t.string   :address
      t.string   :email
      t.string   :origin_port
      t.string   :mode
      t.string   :service_level
      t.string   :shipper_name
      t.string   :shipper_address
      t.string   :importer_of_record
      t.string   :customs_origin_broker
      t.string   :customs_dest_broker
      t.string   :origin_airport
      t.string   :actual_weight
      t.string   :uom
      t.string   :pcs
      t.string   :dimensions_length
      t.string   :dimensions_width
      t.string   :dimensions_height
      t.string   :chargeable_weight

      t.timestamps null: false
    end
  end
end
