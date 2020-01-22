require 'rails_helper'

RSpec.feature "Users wall" do
  scenario "users can view other walls if signed in" do
    sign_up('Harry', 'Mumford', 'harry_mumford@hotmail.co.uk', 'password')
    visit("/10")
    expect(page).to have_content("The page you were looking for doesn't exist.")
  end
end
