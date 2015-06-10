class SalesOrdersController < ApplicationController

  def index
    @sosss = SalesOrder.paginate(page: params[:page])
  end
  
  def show
    @soss = SalesOrder.find(params[:id])
  end

  def new
    @soss = SalesOrder.new
  end

  def create
    @soss = SalesOrder.new(soss_params)
    if @soss.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @soss
    else
      render 'new'
    end
  end

  def edit
    @soss = SalesOrder.find(params[:id])
  end

  def update
    @soss = SalesOrder.find(params[:id])
    if @soss.update_attributes(soss_params)
      flash[:success] = "Profile updated"
      redirect_to @soss
    else
      render 'edit'
    end
  end


  def correct_user
    @soss = SalesOrder.find(params[:id])
    redirect_to(root_url) unless current_user?(@soss)
  end
  private

  def soss_params
    params.require(:sales_order).permit(:due_date, :bill_to, :requestor_name, :title, :address, :email, :origin_port, :dest_port, :mode, :service_level, :shipper_name, :shipper_address, :importer_of_record, :customs_origin_broker, :customs_dest_broker, :origin_airport, :actual_weight, :uom, :pcs, :dimensions_length, :dimensions_width, :dimensions_height, :chargeable_weight)
  end
end

