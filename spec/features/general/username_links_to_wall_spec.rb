require 'rails_helper'

RSpec.feature "Username links", type: :feature do
  scenario "Clicking on a username redirects to that users wall" do
    sign_up('Harry', 'Mumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post('First post')

    user_id = User.all.first.id

    within(first(".post")) do
      click_link "Harry Mumford"
    end

    expect(page.current_path).to eq("/#{user_id}")
  end

  scenario "Clicking on a username redirects to that users wall" do
    sign_up('Harry', 'Mumford', 'harry_mumford@hotmail.co.uk', 'password')
    user_id_harry = User.all.first.id
    
    click_on 'Sign out'

    sign_up('Alice', 'Mumford', 'alice_mumford@hotmail.co.uk', 'password')
    user_id_alice = User.all.last.id

    new_user_wall_post(user_id_harry, 'hello world')

    within(first(".post")) do
      click_link "Alice Mumford"
    end

    expect(page.current_path).to eq("/#{user_id_alice}")
  end
end