require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :status => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_first_name[name=?]", "order[first_name]"

      assert_select "input#order_last_name[name=?]", "order[last_name]"

      assert_select "input#order_address_1[name=?]", "order[address_1]"

      assert_select "input#order_address_2[name=?]", "order[address_2]"

      assert_select "input#order_city[name=?]", "order[city]"

      assert_select "input#order_state[name=?]", "order[state]"

      assert_select "input#order_zip[name=?]", "order[zip]"

      assert_select "input#order_email[name=?]", "order[email]"

      assert_select "input#order_phone[name=?]", "order[phone]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
    end
  end
end
