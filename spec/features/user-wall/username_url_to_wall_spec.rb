require 'rails_helper'

RSpec.feature "Users wall" do
  scenario "users can view other walls with URL /:username" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    user = User.find_by(username: 'hmumford')
    visit("/hmumford")
    expect(page).to have_content "Harry's Wall"
    expect(page.current_path).to eq("/hmumford")

  end
end
