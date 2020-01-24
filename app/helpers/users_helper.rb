module UsersHelper
  NOTICES = {
    :invalid_password => "Password must be 6-10 characters!",
    :username_taken => "Username already taken!"
  }

  def invalid_password
    flash[:alert] = NOTICES[:invalid_password]
    redirect_to '/sign_up'
  end

  def username_taken
    flash[:alert] = NOTICES[:username_taken]
    render template: "users/new"
  end
end
