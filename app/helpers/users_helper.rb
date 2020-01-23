# module UsersHelper
#   NOTICES = {
#     :wrong_password => "Password must be 6-10 characters!",
#     :taken_username => "Username already taken!"
#   }

#   def wrong_password(format)
#     format.html { redirect_to '/sign_up', notice: NOTICES[:wrong_password] }
#     format.json { render :index, status: :created, location: @user }
#   end

#   def taken_username(format)
#     format.html { redirect_to 'users/new', notice: NOTICES[:taken_username] }
#     format.json { render :index, status: :created, location: @user }
#   end
# end
