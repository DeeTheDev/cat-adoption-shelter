class UsersController < ApplicationController
    before_action :is_user_staff
    before_action :set_user, only: [:show, :edit, :update, :destroy, :adopt]
    
    def index
       @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)
        @user.available = "Available"
        if @user.save
            flash.notice = "The user was created successfully."
            redirect_to @user
        else
            flash.now.alert = @user.errors.full_messages.to_sentence
            render :new
        end
    end

    def update
        if @user.update(user_params)
            flash.notice = "The user was updated successfully."
            redirect_to @user
        else
            flash.now.alert = @user.errors.full_messages.to_sentence
            render :edit
        end
    end

    def destroy
        @user.destroy
        respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
        format.json { head :no_content }
        end
    end
    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
