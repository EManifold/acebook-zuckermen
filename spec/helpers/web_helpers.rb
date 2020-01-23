def sign_up(firstname, surname, username, email, password)
  visit "/"
  click_on "Sign up"
  fill_in "First name", with: firstname
  fill_in "Surname", with: surname
  fill_in "Username", with: username
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
  click_on 'Home'
  click_link "New post"
  fill_in "Message", with: message
  click_button "Submit"
end

def new_comment(message)
  click_on 'Home'
  fill_in "comment[message]", with: message
  click_on "Comment"
end
