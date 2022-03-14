class AddFirstNameToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :drink, :string
    add_column :orders, :phone_number, :bigint
  end
end
