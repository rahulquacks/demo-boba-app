class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def kitchen
    @orders = Order.all
  end

  def pickup
    @orders = Order.where("status = 'COMPLETED'")
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.status = "IN_PROGRESS"

    if @order.save
      redirect_to @order
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @order = Order.find(params[:id])
    change_status
  end

  def update
    change_status
  end

  def change_status
    @order = Order.find(params[:id])
    @order.status = "COMPLETED"
    if @order.save
      redirect_to @order
    else
      redirect_to @order, notice: "Status updated to #{@order.status}"
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :drink, :phone_number, :special_instructions)
  end
end
