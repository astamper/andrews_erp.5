json.array!(@orders) do |order|
  json.extract! order, :id, :status, :first_name, :last_name, :address_1, :address_2, :city, :state, :zip, :email, :phone, :fob_date, :fob_time, :customer_id
  json.url order_url(order, format: :json)
end
