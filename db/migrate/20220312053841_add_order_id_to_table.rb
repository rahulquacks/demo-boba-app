class AddOrderIdToTable < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :order_id, :uuid, default: "gen_random_uuid()"
  end
end
