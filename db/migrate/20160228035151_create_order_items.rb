class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.string :status
      t.references :order, index: true
      t.string :stocktype

      t.timestamps
    end
  end
end
