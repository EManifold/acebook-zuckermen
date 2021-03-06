require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can create an account and it is redirected to his wall" do
    sign_up("David", "Bacall", "dbacall", "dbacall@hotmail.co.uk", "password")
    user = User.find_by(email: "dbacall@hotmail.co.uk")
    expect(page).to have_content("Hello David!")
    expect(page).to have_content("David's Wall")
    expect(page.current_path).to eq("/#{user.id}")
  end

  scenario "Password must be between 6 and 10 characters" do
    sign_up("David", "Bacall", "dbacall", "dbacall@hotmail.co.uk", "passw")
    expect(page).to have_content "Password must be 6-10 characters!"
  end

  scenario "No name sends you back to sign up page" do
    sign_up("", "Bacall", "dbacall", "dbacallhotmail.co.uk", "password")
    expect(page.current_path).to eq '/users'
  end

  scenario "Username must be unique" do
    sign_up("David", "Bacall", "dbacall", "dbacallhotmail.co.uk", "password")
    click_on 'Home'
    sign_up("David2", "Bacall2", "dbacall", "dbacall2hotmail.co.uk", "password")
    expect(page.current_path).to eq '/users'
    expect(page).to have_content "Username already taken!"
  end
end
