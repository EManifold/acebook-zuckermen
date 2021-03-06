require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post('First post')
    expect(page).to have_content("First post")
  end
end

RSpec.feature "Time and date", type: :feature do
  scenario "Can see the time and the date of the post that was made" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    time = Time.new.strftime("%k:%M")
    date = Time.new.strftime('%d %B %Y')
    new_post('First post')
    expect(page).to have_content("#{date} at #{time}")
  end
end
