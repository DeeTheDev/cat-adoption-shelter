class DeliveriesController < ApplicationController

    def new
        @delivery = Delivery.new
        @cat = Cat.find(params[:cat_id])
    end

    def create
        @delivery = Delivery.new(appointment_params)
        @cat = Cat.find(params[:delivery][:cat_id])
        #Current user becomes Owner
        @cat.user_id = current_user.id
        #Cat becomes unavailable to adopt
        @cat.available = "Unavailable"
        if @delivery.save
            @cat.save
            flash.notice = "The delivery service for your cat was scheduled successfully! :)"
            redirect_to dashboards_path
        else
            flash.now.alert = @delivery.errors.full_messages.to_sentence
            render :new
        end
    end

    private

    def appointment_params
        params.require(:delivery).permit(:cat_id, :delivery_date)
    end
end