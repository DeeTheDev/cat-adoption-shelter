class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
        @cat = Cat.find(params[:cat_id])
    end

    def create
        @appointment = Appointment.new(appointment_params)
        @cat = Cat.find(params[:appointment][:cat_id])
        #Current user becomes Owner
        @cat.user_id = current_user.id
        #Cat becomes unavailable
        @cat.available = "Unavailable"
        if @appointment.save
            flash.notice = "The appointment was created successfully."
            @cat.save
            redirect_to dashboards_path
        else
            flash.now.alert = @appointment.errors.full_messages.to_sentence
            render :new
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:cat_id, :pickup_date)
    end
end