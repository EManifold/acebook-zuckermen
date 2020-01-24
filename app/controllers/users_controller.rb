class UsersController < Clearance::UsersController
  include UsersHelper

  def create
    @user = user_from_params

    if password_length_checker
      invalid_password
    elsif @user.save
      sign_in @user
      redirect_to user_wall_path(@user)
    else
      username_taken
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :surname, :username, :email, :password)
  end

  def password_length_checker
    params[:user][:password].length < 6 || params[:user][:password].length > 10
  end

end
