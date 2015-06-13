class StaticPagesController < ApplicationController
  def home
  @unfinishedsosss = [] 
    SalesOrder.all.each do |order|
      if order.due_date == "" 
        @unfinishedsosss << order
      elsif order.bill_to == "" 
        @unfinishedsosss << order
      elsif order.requestor_name == "" 
        @unfinishedsosss << order
      elsif order.title == "" 
        @unfinishedsosss << order
      elsif order.address == "" 
        @unfinishedsosss << order
      elsif order.email == "" 
        @unfinishedsosss << order
      elsif order.origin_port == "" 
        @unfinishedsosss << order
      elsif order.mode == "" 
        @unfinishedsosss << order
      elsif order.service_level == "" 
        @unfinishedsosss << order
      elsif order.shipper_name == "" 
        @unfinishedsosss << order
      elsif order.shipper_address == "" 
        @unfinishedsosss << order
      elsif order.importer_of_record == "" 
        @unfinishedsosss << order
      elsif order.customs_origin_broker == "" 
        @unfinishedsosss << order
      elsif order.customs_dest_broker == "" 
        @unfinishedsosss << order
      elsif order.origin_airport == "" 
        @unfinishedsosss << order
      elsif order.actual_weight == "" 
        @unfinishedsosss << order
      elsif order.uom == "" 
        @unfinishedsosss << order
      elsif order.pcs == "" 
        @unfinishedsosss << order
      elsif order.dimensions_length == "" 
        @unfinishedsosss << order
      elsif order.dimensions_width == "" 
        @unfinishedsosss << order
      elsif order.dimensions_height == "" 
        @unfinishedsosss << order
      elsif order.chargeable_weight == nil
        @unfinishedsosss << order
      else
        # @unfinishedsosss = "all soss's are complete"
      end
    end
  end

  def help
  end
end
