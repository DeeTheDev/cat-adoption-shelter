class ProfilesController < ApplicationController
    before_action :set_profile, only: [:edit, :update]

    def edit
        @cat = Cat.find(params[:cat_id])
        @profile = Profile.find_by(user_id: current_user.id)
    end

    def update
        if @profile.update(profile_params)
            flash.notice = "The profile was updated successfully."
            redirect_to controller: 'deliveries', action: 'new', cat_id: params[:profile][:cat_id]
        else
            flash.now.alert = @profile.errors.full_messages.to_sentence
            render :edit
        end
    end

    private

    def set_profile
        @profile = Profile.find_by(user_id: current_user.id)
    end
    
    def profile_params
        params.require(:profile).permit(:user_id, :street, :street_2, :city, :state, :zip_code, :tel_number, :mobile_number, :of_age)
    end
end