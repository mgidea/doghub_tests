require 'spec_helper'

feature 'user submits contact form' do
  # As a site visitor
  # I want to contact DogHub staff
  # So that I can tell them how awesome they are

  # Acceptance Criteria:

  # I must specify a valid email address
  # I must specify a subject
  # I must specify a description
  # I must specify a first name
  # I must specify a last name
  it "creates a valid submission" do
    visit '/contacts'
    expect(page).to have_content "Requests"
    click_on 'New Contact'
    fill_in "Email", with: "tom@gmail.com"
    fill_in "Subject", with: "grooming"
    fill_in "Description", with: "summer cuts"
    fill_in "First name", with: "Tom"
    fill_in "Last name", with: "Corley"

    click_button "Create Contact"
    expect(page).to have_content "Contact was successfully created"
  end
end

