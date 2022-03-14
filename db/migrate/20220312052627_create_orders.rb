class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.text :special_instructions

      t.timestamps
    end
  end
end
