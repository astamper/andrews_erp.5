class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.date :fob_date
      t.time :fob_time
      t.references :customer, index: true

      t.timestamps
    end
  end
end
