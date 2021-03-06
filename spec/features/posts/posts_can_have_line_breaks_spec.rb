require 'rails_helper'

RSpec.feature "line breaks in posts" do
  scenario "posts can have line breaks in them" do
    sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
    new_post("This post\nhas line breaks")
    page.html.should include('<p class="post-message">This post<br>has line breaks</p>')
  end
end
