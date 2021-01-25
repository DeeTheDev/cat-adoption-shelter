class RegistrationsController < Devise::RegistrationsController

    def create
        @user = User.new(user_params)
        if @user.save
            @user.create_profile!
            redirect_to pages_path
        else
            warden.custom_failure!
            redirect_to pages_path
        end
    end

    def update
        @user = User.find_by_email(user_params[:email])

        if @user.update_attributes(user_params)
            redirect_to pages_path
        else
            warden.custom_failure!
            redirect_to pages_path
        end
    end

    def destroy
        @user = User.find_by_email(user_params[:email])
        if @user.destroy
            redirect_to pages_path
        else
            redirect_to pages_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end