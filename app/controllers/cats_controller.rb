class CatsController < ApplicationController
    before_action :set_cat, only: [:show, :edit, :update, :destroy]

    def index
        cats = Cat.all
    end

    def show

    end

    def new
        @cat = Cat.new
    end

    def edit
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            flash.notice = "The cat was created successfully."
            redirect_to @cat
        else
            flash.now.alert = @cat.errors.full_messages.to_sentence
            render :new
        end
    end


    def update
        if @cat.update(cat_params)
            flash.notice = "The cat was updated successfully."
            redirect_to @cat
        else
            flash.now.alert = @cat.errors.full_messages.to_sentence
            render :edit
        end
    end

    def destroy
        @cat.destroy
        respond_to do |format|
        format.html { redirect_to cats_url, notice: 'Cat was successfully deleted.' }
        format.json { head :no_content }
        end
    end
    private

    def set_cat
        @cat = Cat.find(params[:id])
      end

    def cat_params
        params.require(:cat).permit(:name, :age, :color, :breed, :gender, :good_with_cats, :good_with_dogs, :special_needs, :description, :declawed, :image_url)
    end
end