require 'spec_helper'

# As an admin
# I want to review contact inquiries
# So that I can respond or take action

# Acceptance Criteria
# * I can see a list of all contact inquiries

feature "admin views" do

  scenario "see all contacts" do
    FactoryGirl.create_list(:contact, 5)
    visit '/contacts'

    expect(page).to have_content "firstname1", "lastname1", "tom1@gmail.com", "subject1", "description1"
    expect(page).to have_content "firstname2", "lastname2", "tom2@gmail.com", "subject2", "description2"
    expect(page).to have_content "firstname3", "lastname3", "tom3@gmail.com", "subject3", "description3"
    expect(page).to have_content "firstname4", "lastname4", "tom4@gmail.com", "subject4", "description4"
    expect(page).to have_content "firstname5", "lastname5", "tom5@gmail.com", "subject5", "description5"

  end
end
