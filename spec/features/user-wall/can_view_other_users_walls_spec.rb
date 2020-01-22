require 'rails_helper'

RSpec.feature "Users wall" do
  scenario "users can view other walls after signing up" do
    sign_up('Harry', 'Mumford', 'harry_mumford@hotmail.co.uk', 'password')
    user = User.find_by(email: 'harry_mumford@hotmail.co.uk')
    click_on 'Sign out'
    
    sign_up('Barry', 'Mumford', 'barry_mumford@hotmail.co.uk', 'password')
    visit("/#{user.id}")
   
    expect(page.current_path).to eq("/#{user.id}")
  end
end
