# require 'rails_helper'
#
# RSpec.feature "Users wall comments" do
#   scenario "users can comment on any wall post" do
#     sign_up('Harry', 'Mumford', 'hmumford', 'harry_mumford@hotmail.co.uk', 'password')
#     user_id = User.all.first.id
#
#     new_user_wall_post(user_id, 'Test user wall post')
#
#     new_wall_comment(user_id, 'Test comment')
#
#     expect(page.current_path).to eq("/#{user_id}")
#     expect(page).to have_content 'Test comment'
#   end
# end
