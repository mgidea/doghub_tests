require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :email => "MyString",
      :subject => "MyString",
      :description => "MyString",
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_subject[name=?]", "contact[subject]"
      assert_select "input#contact_description[name=?]", "contact[description]"
      assert_select "input#contact_first_name[name=?]", "contact[first_name]"
      assert_select "input#contact_last_name[name=?]", "contact[last_name]"
    end
  end
end
