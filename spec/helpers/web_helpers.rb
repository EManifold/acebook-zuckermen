def sign_up(firstname, surname, email, password)
  visit "/"
  click_on "Sign up"
  fill_in "First name", with: firstname
  fill_in "Surname", with: surname
  fill_in "Email", with: email
  fill_in "Password", with: password
  within ".submit-field" do
    click_on "Sign up"
  end
end

def sign_in(email, password)
  visit '/'
  fill_in "Email", with: email
  fill_in "Password", with: password
  within ".submit-field" do
    click_on 'Sign in'
  end
end

def new_post(message)
  visit('/posts')
  click_link "New post"
  fill_in "Message", with: message
  click_button "Submit"
end

def new_comment(message)
  visit('/posts')
  fill_in "comment[message]", with: message
  click_on "Comment"
end

def new_user_wall_post(id, message)
  visit("/#{id}")
  fill_in "post[message]", with: message
  click_button "Post"
end
