class DashboardsController < ApplicationController
    def index
    end

    def show
        @cat = Cat.find(params[:cat_id])
    end

    def edit
    end

    def update_user
        if current_user.update(user_params)
            flash.notice = "Account settings were updated successfully."
            redirect_to dashboard_edit_user_path
        else
            flash.now.alert = @user.errors.full_messages.to_sentence
            render :edit
        end
    end
    
    def update_profile
        @profile = current_user.profile
        if @profile.update(profile_params)
            flash.notice = "Profile settings were updated successfully."
            redirect_to dashboard_edit_user_path
        else
            flash.now.alert = @user.errors.full_messages.to_sentence
            render :edit
        end
    end

    def destroy
        if current_user.cats.exists?
            current_user.cats.each do |cat|
                cat.available = "Available"
                cat.save
            end
        end
        if current_user.destroy
            flash.notice = "Account deactivated! Thank you being a member <3"
            redirect_to pages_path
        end
    end
    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
    
    def profile_params
        params.require(:profile).permit(:user_id, :street, :street_2, :city, :state, :zip_code, :tel_number, :mobile_number)
    end
end