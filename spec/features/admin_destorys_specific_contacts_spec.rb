require 'spec_helper'

# As an admin
# I want to delete an inquiry
# So that I can remove spam or other undesirable inquiries
# Acceptance Criteria:

# I can remove an item from the listing of contact inquiries

feature "admin destroys contact item" do
  FactoryGirl.create(:contact)
  after :all do
    @contacts.each {|contact| contact.destroy!}
  end
  scenario "admin creates list and deletes one of the items" do
    prev_count = Contact.count
    visit '/contacts'
    expect(page).to have_content "Destroy", "Edit", "Show"
    click_on "Destroy"
    expect(Contact.count == prev_count - 1)

  end
end
