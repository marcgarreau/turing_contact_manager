require 'rails_helper'

RSpec.describe "phone_numbers/new", :type => :view do
  before(:each) do
    assign(:phone_number, PhoneNumber.new(
      :number => "MyString",
      :contact_id => 1
    ))
  end

  it "renders new phone_number form" do
    render

    assert_select "form[action=?][method=?]", phone_numbers_path, "post" do
      assert_select "input#phone_number_number[name=?]", "phone_number[number]"
      assert_select "input#phone_number_contact_id[name=?]", "phone_number[contact_id]"
    end
  end
end
