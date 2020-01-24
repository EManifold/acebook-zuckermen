require 'rails_helper'

feature "like posts" do
  scenario "can like a post" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post('First post')
    click_button "like-btn"
    within ".likes" do
      expect(page).to have_content('1')
    end
  end

  scenario "can unlike a post once you've liked it" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post('First post')
    click_on "like-btn"
    click_on "unlike-btn"
    within ".likes" do
      expect(page).to have_content('0')
    end
  end
end
