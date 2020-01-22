require 'rails_helper'

RSpec.feature "Users wall posts" do
  scenario "users can post on other users' wall" do
    sign_up('Harry', 'Mumford', 'harry_mumford@hotmail.co.uk', 'password')
    user_id = User.all.first.id
    new_user_wall_post(user_id, 'Test user wall post')

    expect(page.current_path).to eq("/#{user_id}")
    expect(page).to have_content 'Test user wall post'

    visit '/posts'
    expect(page).not_to have_content 'Test user wall post'
  end
end
