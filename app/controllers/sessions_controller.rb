class SessionsController < Devise::SessionsController

    def create
        @user = User.find_by_email(user_params[:email])
        return invalid_login_attempt unless @user

        if @user.valid_password?(user_params[:password])
        sign_in :user, @user
        flash.notice = "Welcome back to our Cat Adoption Shelter!"
        redirect_to pages_path
        else
        invalid_login_attempt
        end
    end

    def destroy
        sign_out(@user)
        flash.notice = "You have logged out successfully!"
        redirect_to pages_path
    end


    private

    def invalid_login_attempt
        flash.notice = "Invalid credentials, please try again."
        redirect_to new_user_session_path
    end

    def user_params
        params.require(:user).permit(:email, :password, :remember_me)
    end

end