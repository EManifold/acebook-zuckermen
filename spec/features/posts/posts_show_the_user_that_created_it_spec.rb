require 'rails_helper'

RSpec.feature "User name on post" do
  scenario "it shows the user who created the post" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post('First post')
    expect(page).to have_content("Harry Mumford")
  end
end
