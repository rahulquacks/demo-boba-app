class Api::V1::OrdersController < Api::V1::BaseController
  def index
    render json: Order.all
  end
  def create
    @order = Order.new(order_params)
    @order.status = "IN_PROGRESS"

    if @order.save
      render json: @order
    else
      render error: { error: 'Unable to process order'}, status: 400
    end
  end

  def archive_all
    MarkOrderArchivedJob.set(wait: 30.seconds).perform_later
    render json: {"message" => "orders will be marked archived"}, status: "200 OK"
  end

  private
  def order_params
    params.require(:order).permit(:first_name, :last_name, :drink, :phone_number, :special_instructions)
  end
end